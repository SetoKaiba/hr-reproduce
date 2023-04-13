package net.kaiba.util;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.config.inject.ConfigProperty;

import java.util.Date;
import java.util.concurrent.atomic.AtomicLong;

/**
 * 序号生成器：雪花算法
 *
 * 生成数字 long 64bit
 *
 * 1. 第一位 占用 1bit，其值始终是0，没有实际作用
 * 2. 时间戳 占用 41bit，精确到毫秒，总共可以容纳约 69 年的时间
 * 3. 负载标识 占用 10bit，其中高位 5bit 做设备编码，低位 5bit 做工作节点编码，做多可以容纳 1024 个节点
 * 4. 序列号 占用 12bit，每个节点每毫秒从 0 开始不断累加，最多可以累加到 4095，一共可以产生 4096 个唯一标识
 *
 * @author 殷明均
 * @since 2022-04-25
 */
@ApplicationScoped
public class KeygenUtil {

  @Inject
  @ConfigProperty(name = "generator.machine", defaultValue = "0")
  long machineId;

  @Inject
  @ConfigProperty(name = "generator.worker", defaultValue = "0")
  long workerId;

  private static final long MACHINE_ID_BITS = 5L;
  private static final long WORKER_ID_BITS = 5L;
  private static final long SEQUENCE_BITS = 12L;

  private static final long MAX_SEQUENCE = ~(-1L << SEQUENCE_BITS);

  private static final long TIMESTAMP_SHIFT = SEQUENCE_BITS + MACHINE_ID_BITS + WORKER_ID_BITS;
  private static final long MACHINE_ID_SHIFT = SEQUENCE_BITS + WORKER_ID_BITS;
  private static final long WORKER_ID_SHIFT = SEQUENCE_BITS;
  private static final long EPOCH = 1672531200000L;

  private static final int RADIX = 36;

  private long sequence = 0L;
  private long latest = -1L;
  private final AtomicLong waitCount = new AtomicLong(0);

  /**
   * 生成自增长序列
   *
   * @return 整数序列
   */
  public synchronized long next() {
    long ts = current();

    if (ts < latest) {
      throw new IllegalStateException(String.format("发生时钟偏移，延迟 %d 毫秒", latest - ts));
    }

    if (ts == latest) {

      sequence = (sequence + 1) & MAX_SEQUENCE;

      // 溢出：大于最大序列
      if (sequence == 0) {
        ts = block(ts);
      }

    } else {
      // 下一个周期/毫秒重置为0
      sequence = 0L;
    }

    // 跟踪并记录生成的最后一个序列的时间戳
    latest = ts;

    return ((ts - EPOCH) << TIMESTAMP_SHIFT)
            | (machineId << MACHINE_ID_SHIFT)
            | (workerId << WORKER_ID_SHIFT)
            | sequence;
  }

  /**
   * 36 进制字符串编码
   *
   * @param i 长整数
   * @return 编码字符串
   */
  public static String encode(long i) {
    return Long.toUnsignedString(i, RADIX);
  }

  /**
   * 36 进制字符串解码
   *
   * @param str 编码字符串
   * @return 解码后的指纹
   */
  public static long decode(String str) {
    return Long.parseLong(str, RADIX);
  }

  /**
   * 提取 Id 中的时间对象
   *
   * @param id 序列标识
   * @return 时间对象
   */
  public static Date parse(long id) {

    // 转换为二进制字符串
    String str = Long.toBinaryString(id);

    // 计算时间戳字符长度
    int len = str.length() - (int) TIMESTAMP_SHIFT;

    // 生成时间戳
    long ts = EPOCH + Long.parseLong(str.substring(0, len), 2);

    // 将时间戳转换为日期对象
    return new Date(ts);
  }

  /**
   * 运行循环阻塞，直到下一毫秒
   *
   * @param ts 当前时间戳
   * @return 当前时间戳（毫秒）
   */
  private long block(long ts) {

    // 原子阻塞
    waitCount.incrementAndGet();

    // 至下一毫秒，重新计算时间序列
    while (ts <= latest) {
      ts = current();
    }

    return ts;
  }

  /**
   * 获取当前时间戳
   *
   * @return 当前时间戳（毫秒）
   */
  private long current() {
    return System.currentTimeMillis();
  }
}