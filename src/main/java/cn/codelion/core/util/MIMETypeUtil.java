/**
 * @Title: MIMETypeUtil.java
 * @Package com.strongit.filenet.service.util
 * @Description: TODO(用一句话描述该文件做什么)
 * @author Changling Jiang
 * @date 2014-2-28 下午05:06:48
 * @version V1.0
 */
package cn.codelion.core.util;

/**
 * @ClassName: MIMETypeUtil
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author Changling Jiang
 * @date 2014-2-28 下午05:06:48
 * 
 */
public class MIMETypeUtil {
	
	public static String getMIMEType(String fileName) {
		int n = fileName.lastIndexOf(".");
		if (n == -1) {
			return null;
		} else {
			String subFileName = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
			if (".jpeg".equals(subFileName) || ".jpg".equals(subFileName)) {
				return "image/jpeg";
			} else if (".pdf".equals(subFileName)) {
				return "application/pdf";
			} else if (".zip".equals(subFileName)) {
				return "application/x-zip-compressed";
			} else if (".txt".equals(subFileName) || ".log".equals(subFileName) || ".text".equals(subFileName)) {
				return "text/plain";
			} else if (".tif".equals(subFileName) || ".tiff".equals(subFileName)) {
				return "image/tiff";
			} else if (".bmp".equals(subFileName)) {
				return "image/bmp";
			} else if (".xml".equals(subFileName)) {
				return "text/xml";
			} else if (".html".equals(subFileName) || ".htm".equals(subFileName)) {
				return "text/html";
			} else if (".gif".equals(subFileName)) {
				return "image/gif";
			} else if (".png".equals(subFileName)) {
				return "image/png";
			} else if (".doc".equals(subFileName)) {
				return "application/msword";
			} else if (".docx".equals(subFileName)) {
				return "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
			} else if (".xls".equals(subFileName)) {
				return "application/vnd.ms-excel";
			} else if (".xlsx".equals(subFileName)) {
				return "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
			} else if (".ppt".equals(subFileName) || ".pptx".equals(subFileName)) {
				return "application/vnd.ms-powerpoint";
			} else if (".vcf".equals(subFileName)) {
				return "text/x-vcard";
			} else if (".vcs".equals(subFileName)) {
				return "application/octet-stream";
			} else {
				return "application/octet-stream";
			}
		}
	}

}
