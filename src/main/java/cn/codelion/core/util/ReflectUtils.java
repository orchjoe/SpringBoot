package cn.codelion.core.util;

import java.lang.reflect.ParameterizedType;

public class ReflectUtils {
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static <T> Class<T> getClassGenericType(final Class clazz) {
		return (Class<T>) ((ParameterizedType) clazz.getGenericSuperclass()).getActualTypeArguments()[0];
	}
}
