/**
 * 文 件 名:  EnumDateFormat.java 
 * 描    述:  <描述> 
 * 修 改 人:  QiaoShipeng 
 * 修改时间:  2014年7月10日 
 */
package cn.codelion.core.util;

/**
 * 作者：QiaoShipeng 时间：2014年7月10日 上午11:29:27
 */
public enum EnumDateFormat {
	YMD("yyyy-MM-dd"), YMDHMS("yyyy-MM-dd HH:mm:ss");
	private final String value;

	EnumDateFormat(String v) {
		value = v;
	}

	public String value() {
		return value;
	}
}
