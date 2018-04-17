/**
 * 文 件 名:  ObjectUtils.java 
 * 描    述:  <描述> 
 * 修 改 人:  QiaoYu 
 * 修改时间:  2017年3月9日 下午1:24:59
 */ 
package cn.codelion.core.util;

/** 
 * @author  QiaoYu 
 */
public class ObjectUtils {
	
	public static boolean isNull(Object obj){
		if (null == obj) {
			return true;
		}else{
			return false;
		}
	}
	
	public static void copy(Object src, Object desc) {
		try {
			org.springframework.beans.BeanUtils.copyProperties(src, desc);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
