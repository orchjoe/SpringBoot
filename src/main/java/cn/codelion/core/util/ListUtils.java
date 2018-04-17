package cn.codelion.core.util;

import java.util.List;

public class ListUtils {
	public static boolean isEmpty(List<?> list){
		if (null == list || list.size()<=0) {
			return true;
		}else{
			return false;
		}
	}
	public static boolean isNotEmpty(List<?> list){
		return !isEmpty(list);
	}
}
