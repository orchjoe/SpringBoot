package cn.codelion.core.util;

import java.net.URLEncoder;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * http请求相关
 * 
 * @author zhanggp
 * 
 */
@SuppressWarnings("deprecation")
public class HttpUtils {

	public static final Logger logger = LoggerFactory.getLogger(HttpUtils.class);

	private static final String APPLICATION_JSON = "application/json";

	private static final String CONTENT_TYPE_TEXT_JSON = "text/json";

	private static DefaultHttpClient httpClient;

	public static String doPost(String url, Object obj) throws Exception {
		httpClient = new DefaultHttpClient();
		HttpPost httpPost = new HttpPost(url);
		httpPost.addHeader(HTTP.CONTENT_TYPE, APPLICATION_JSON);
		String encoderJson = (String) obj;
		encoderJson = URLEncoder.encode(encoderJson, HTTP.UTF_8);
		StringEntity se = new StringEntity(encoderJson);
		se.setContentType(CONTENT_TYPE_TEXT_JSON);
		se.setContentEncoding(new BasicHeader(HTTP.CONTENT_TYPE, APPLICATION_JSON));
		httpPost.setEntity(se);
		// 返回服务器响应
		HttpResponse response = httpClient.execute(httpPost);
		HttpEntity entity = response.getEntity();
		String responseString = null;
		try {
			// Header[] headers = response.getAllHeaders(); // 返回的HTTP头信息
			// for (int i = 0; i < headers.length; i++) {
			// System.out.println(headers[i]);
			// }
			if (response.getEntity() != null) {
				responseString = EntityUtils.toString(response.getEntity()); // 返回服务器响应的HTML代码
			}
		} finally {
			if (entity != null)
				entity.consumeContent();
		}
		return responseString;
	}
}