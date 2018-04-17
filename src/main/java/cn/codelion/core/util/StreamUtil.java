/**
 * @fileName:  StreamUtil.java 
 * @Description:  TODO
 * @CreateName:  qiaos 
 * @CreateDate:  2017年12月1日 上午9:51:10
 */ 
package cn.codelion.core.util; 

import java.io.ByteArrayInputStream;
import java.io.InputStream;

/** 
 * @author  qiaos 
 */
public class StreamUtil {
	public static InputStream byte2Input(byte[] buf) {  
        return new ByteArrayInputStream(buf);  
    }  
}
