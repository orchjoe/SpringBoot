package cn.codelion.core.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DateUtils {
	public static final Logger logger = LoggerFactory.getLogger(DateUtils.class);
	private static SimpleDateFormat formatYMD;
	private static SimpleDateFormat formatYMDHMS;
	private static SimpleDateFormat formatYMDHMSSSS;
	/**
	 * 中文格式
	 */
	private static DateFormat formatWC;
	/**
	 * 星期英文单词前三个字符（星期日-星期六）（周四为thr）
	 */
	public static final String[] arrWeekPreThree = { "sun", "mon", "tue", "wen", "thr", "fri", "sat" };

	static {
		formatYMD = new SimpleDateFormat("yyyy-MM-dd");
		formatYMDHMS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		formatYMDHMSSSS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss,SSS");
		formatWC = new SimpleDateFormat("E", new Locale("zh", "CN"));
	}

	/**
	 * 时间格式化yyyy-MM-dd
	 */
	public static Date parseDateYMD(String dateStr) {
		try {
			return formatYMD.parse(dateStr);
		} catch (Exception e) {
			logger.debug("转换日期格式：yyyy-MM-dd---" + dateStr + "出现错误！");
		}
		return null;
	}

	public static String toDateStringYMD(Date date) {
		if (date == null) {
			return null;
		}
		return formatYMD.format(date);
	}

	public static String toDateStringYMDHMS(Date date) {
		if (date == null) {
			return null;
		}
		return formatYMDHMS.format(date);
	}
	public static String toDateStringYMDHMSSSS(Date date) {
		if (date == null) {
			return null;
		}
		return formatYMDHMSSSS.format(date);
	}

	/**
	 * 输入日期取星期 区分 1中文 2英文
	 * 
	 * @throws Exception
	 */
	public static String getWeekDay(String dateStr) {
		String weekDay = "";
		try {
			Date d = formatYMD.parse(dateStr);
			weekDay = (formatWC.format(d)).toLowerCase();
		} catch (Exception e) {
			logger.debug("转换日期格式：yyyy-MM-dd---" + dateStr + "出现错误！");
		}
		return weekDay;
	}

	public static Date parseSelfDate(Date date, String frmt) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat(frmt);
			return sdf.parse(sdf.format(date));
		} catch (Exception e) {
			logger.debug("转换日期格式：" + frmt + "---" + date + "出现错误！");
			return null;
		}
	}

	public static boolean before(Date date1, Date date2, String frmt) {
		date1 = parseSelfDate(date1, frmt);
		date2 = parseSelfDate(date2, frmt);
		return date1.before(date2);
	}

	/**
	 * 日期1是否在日期2之前(只比较日期)
	 * 
	 * @return
	 */
	public static boolean beforeDate(Date date1, Date date2) {
		return before(date1, date2, "yyyy-MM-dd");
	}

	/**
	 * 日期1是否在日期2之后
	 * 
	 * @return
	 */
	public static boolean after(Date date1, Date date2, String frmt) {
		date1 = parseSelfDate(date1, frmt);
		date2 = parseSelfDate(date2, frmt);
		return date1.after(date2);
	}

	/**
	 * 日期1是否在日期2之后(只比较日期)
	 */
	public static boolean afterDate(Date date1, Date date2) {
		return after(date1, date2, "yyyy-MM-dd");
	}

	public static boolean betweenDate(Date date, Date start, Date end) {
		return !beforeDate(date, start) && !afterDate(date, end);
	}

	public static boolean equal(Date date1, Date date2, String frmt) {
		date1 = parseSelfDate(date1, frmt);
		date2 = parseSelfDate(date2, frmt);
		return (date1.getTime() == date2.getTime());
	}

	public static boolean equalDate(Date date1, Date date2) {
		return equal(date1, date2, "yyyy-MM-dd");
	}

	public static boolean equalDateTime(Date date1, Date date2) {
		return equal(date1, date2, "yyyy-MM-dd hh:mm:ss");
	}

	public static Date addDateDay(Date date, int daynum) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.add(Calendar.DAY_OF_MONTH, daynum);
		return calendar.getTime();
		// return formatYMD.format(calendar.getTime());
	}

	public static int daysBetween(Date now, Date returnDate) {
		Calendar cNow;
		Calendar cReturnDate;
		if (null == now) {
			cNow = Calendar.getInstance();
		} else {
			cNow = calendarFromDate(now);
		}
		if (null == returnDate) {
			cReturnDate = Calendar.getInstance();
		} else {
			cReturnDate = calendarFromDate(returnDate);
		}
		cNow.setTime(now);
		cReturnDate.setTime(returnDate);
		setTimeToMidnight(cNow);
		setTimeToMidnight(cReturnDate);
		long todayMs = cNow.getTimeInMillis();
		long returnMs = cReturnDate.getTimeInMillis();
		long intervalMs = todayMs - returnMs;
		return millisecondsToDays(intervalMs);
	}

	private static int millisecondsToDays(long intervalMs) {
		return (int) (intervalMs / (1000 * 86400));
	}

	private static void setTimeToMidnight(Calendar calendar) {
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
	}

	public static Calendar calendarFromDate(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar;
	}

	public static long getDate() {
		return new Date().getTime();
	}
}
