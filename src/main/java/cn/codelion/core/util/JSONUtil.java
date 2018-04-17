/**
 * 文 件 名:  JSONUtil.java 
 * 描    述:  <描述> 
 * 修 改 人:  QiaoShipeng 
 * 修改时间:  2014年7月10日 
 */
package cn.codelion.core.util;

import com.alibaba.fastjson.JSON;

/**
 * 作者：QiaoShipeng 时间：2014年7月10日 上午11:26:05
 */
public class JSONUtil {
	/**
	 * 转换成json的字符串 作者：QiaoShipeng 时间：2014年7月10日 上午11:37:07
	 */
	public static String toJsonString(Object obj) {
		if (null == obj) {
			return "";
		}else{
			//EnumDateFormat.YMDHMS
			return JSON.toJSONString(obj);
		}
	}

	/**
	 * 转换带日期格式 作者：QiaoShipeng 时间：2014年7月10日 上午11:36:58
	 */
	public static String toJsonString(Object obj, EnumDateFormat enumDateFormat) {
		return JSON.toJSONStringWithDateFormat(obj, enumDateFormat.toString());
	}
}
