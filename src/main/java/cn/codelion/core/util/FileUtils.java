package cn.codelion.core.util;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.util.Calendar;
import java.util.UUID;

import org.apache.commons.io.IOUtils;

/**
 * 文件处理工具类.
 * <p>
 * 创建日期：2010-07-01<br>
 * 创建人：Xiyt<br>
 * 修改日期：<br>
 * 修改人：<br>
 * 修改内容：<br>
 * 
 * @author Xiyt
 * @version 1.0
 */
public class FileUtils extends org.apache.commons.io.FileUtils {

	/**
	 * 输出文件到磁盘
	 * 
	 * @param data
	 * @param filePathAndName
	 * @throws Exception
	 */
	public static void writeFileToDisk(byte[] data, String filePath) throws Exception {
		// 文件输出流
		FileOutputStream fos = null;
		if (StringUtils.isNotEmpty(filePath) && null != data) {
			fos = new FileOutputStream(filePath);
			fos.write(data);
			fos.close();
		}
	}

	/**
	 * 输出文件到磁盘
	 * 
	 * @param data
	 * @param filePathAndName
	 * @throws Exception
	 */
	public static void copyInputStreamToFile(InputStream inputStream, File file) throws IOException {
		org.apache.commons.io.FileUtils.copyInputStreamToFile(inputStream, file);
	}

	/**
	 * 获得文件byte[]
	 * 
	 * @param filePath
	 * @throws Exception
	 * @throws Exception
	 */
	@SuppressWarnings("deprecation")
	public static byte[] readFileToByteArray(String filePath) throws Exception {
		File file = new File(filePath);
		InputStream in = new FileInputStream(file);
		try {
			return IOUtils.toByteArray(in);
		} finally {
			IOUtils.closeQuietly(in);
		}
	}

	/**
	 * 获得随机文件名
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getUUIDName(String fileName) {
		String[] split = fileName.split("\\.");
		String extendFile = "." + split[(split.length - 1)].toLowerCase();
		return UUID.randomUUID().toString() + extendFile;
	}

	/**
	 * 获得随机文件ID
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getUUID() {
		return UUID.randomUUID().toString();
	}

	/**
	 * 获得文件名
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getFileName(String fileName) {
		String[] split = fileName.split("\\.");
		return split[0];
	}

	/**
	 * 获得网络文件名（带扩展名）
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getUrlFileName(String url) {
		return url.substring(url.lastIndexOf("/") + 1);
	}

	/**
	 * 获得文件类型
	 * 
	 * @param fileName
	 * @return
	 */
	public static String getFileTypeByName(String fileName) {
		String[] split = fileName.split("\\.");
		String extendFile = split[(split.length - 1)].toLowerCase();
		return extendFile;
	}

	/**
	 * 创建文件
	 * 
	 * @param filePath
	 *            文件路径
	 * @param content
	 *            文件内容
	 * @param encoder
	 *            文件编码
	 * @return
	 */
	public static void createFileWithEncoder(String filePath, String content, String encoder) throws Exception {
		// 创建文件输出流
		FileOutputStream fos = new FileOutputStream(filePath, false);
		OutputStreamWriter osw = new OutputStreamWriter(fos, encoder);
		osw.write(content);

		// 关闭流
		osw.close();
		fos.close();
	}

	/**
	 * 创建目录
	 * 
	 * @param dirs
	 *            文件路径
	 * @return
	 */
	public static void createDirs(String dirs) throws Exception {
		File file = new File(dirs);
		file.mkdirs();
	}

	/**
	 * 保存文件到指定路径
	 * 
	 * @param f
	 *            文件
	 * @param path
	 *            路径
	 * @throws Exception
	 */
	public static String save(File f, String path) throws Exception {
		File dest = new File(path);
		if (!dest.getParentFile().exists())
			dest.getParentFile().mkdirs();
		org.apache.commons.io.FileUtils.copyFile(f, dest);
		return path;
	}

	/**
	 * 根据路径来删除文件
	 * 
	 * @param path
	 * @throws IOException
	 */
	public static void delete(String path) throws Exception {
		File dest = new File(path);
		if (dest.exists()) {
			org.apache.commons.io.FileUtils.forceDelete(dest);
		}
	}

	/**
	 * 根据路径来删除文件
	 * 
	 * @param path
	 * @throws IOException
	 */
	public static void delete(File dest) throws Exception {
		if (dest.exists()) {
			org.apache.commons.io.FileUtils.forceDelete(dest);
		}
	}

	public static InputStream byte2Input(byte[] buf) {
		return new ByteArrayInputStream(buf);
	}

	public static String getCdDir() {
		Calendar cal = Calendar.getInstance();
		String month = "" + (cal.get(Calendar.MONTH) + 1);
		String day = "" + cal.get(Calendar.DAY_OF_MONTH);
		if (month.length() < 2) {
			month = "0" + month;
		}
		if (day.length() < 2) {
			day = "0" + day;
		}
		// 生成的目录
		String cdDir = "scpm/file/" + cal.get(Calendar.YEAR) + "/" + month + "/" + day;
		return cdDir;
	}

	public static String generatorFileName(String realFileName) {
		// 获取扩展名
		String prefixName = realFileName.substring(realFileName.lastIndexOf(".") + 1);
		// 生成一个文件名字
		String uuId = UUID.randomUUID() + "";
		String fileName = uuId.replace("-", "") + "." + prefixName;
		return fileName;
	}
}