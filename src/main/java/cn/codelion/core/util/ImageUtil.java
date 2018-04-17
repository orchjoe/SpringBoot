/**
 * 文 件 名:  ImageUti.java 
 * 描    述:  <描述> 
 * 修 改 人:  QiaoShipeng 
 * 修改时间:  2015年11月12日 
 */
package cn.codelion.core.util;

import java.awt.AlphaComposite;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

/**
 * @author QiaoShipeng
 */
public class ImageUtil {
	public static void markImageByIcon(String iconPath, String srcImgPath, String targerPath, Integer degree) {
		OutputStream os = null;
		try {
			Image srcImg = ImageIO.read(new File(srcImgPath));
			BufferedImage buffImg = new BufferedImage(srcImg.getWidth(null), srcImg.getHeight(null), BufferedImage.TYPE_INT_RGB);
			// 得到画笔对象
			Graphics2D g = buffImg.createGraphics();
			// 设置对线段的锯齿状边缘处理
			g.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
			g.drawImage(srcImg.getScaledInstance(srcImg.getWidth(null), srcImg.getHeight(null), Image.SCALE_SMOOTH), 0, 0, null);
			if (null != degree) {
				// 设置水印旋转
				g.rotate(Math.toRadians(degree), (double) buffImg.getWidth() / 2, (double) buffImg.getHeight() / 2);
			}
			// 水印图象的路径 水印一般为gif或者png的，这样可设置透明度
			ImageIcon imgIcon = new ImageIcon(iconPath);
			// 得到Image对象。
			Image img = imgIcon.getImage();
			float alpha = 0.5f; // 透明度
			g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_ATOP, alpha));
			// 表示水印图片的位置
			g.drawImage(img, 150, 300, null);
			g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER));
			g.dispose();
			os = new FileOutputStream(targerPath);
			// 生成图片
			ImageIO.write(buffImg, "JPG", os);
			System.out.println("图片完成添加Icon印章。。。。。。");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (null != os)
					os.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 加水印
	 * 
	 * @author QiaoShipeng
	 * @param iconPath
	 * @param srcInputStream
	 * @param degree
	 * @return date: 2015年11月12日 下午9:31:15
	 */
	public static ByteArrayOutputStream markImageByIcon(String iconPath, InputStream srcInputStream, Integer degree) {
		ByteArrayOutputStream os = null;
		try {
			Image srcImg = ImageIO.read(srcInputStream);
			BufferedImage buffImg = new BufferedImage(srcImg.getWidth(null), srcImg.getHeight(null), BufferedImage.TYPE_INT_RGB);
			// 得到画笔对象
			Graphics2D g = buffImg.createGraphics();
			// 设置对线段的锯齿状边缘处理
			g.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
			g.drawImage(srcImg.getScaledInstance(srcImg.getWidth(null), srcImg.getHeight(null), Image.SCALE_SMOOTH), 0, 0, null);
			if (null != degree) {
				// 设置水印旋转
				g.rotate(Math.toRadians(degree), (double) buffImg.getWidth() / 2, (double) buffImg.getHeight() / 2);
			}
			// 水印图象的路径 水印一般为gif或者png的，这样可设置透明度
			ImageIcon imgIcon = new ImageIcon(iconPath);
			// 得到Image对象。
			Image img = imgIcon.getImage();
			float alpha = 0.5f; // 透明度
			g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_ATOP, alpha));
			// 表示水印图片的位置
			g.drawImage(img, buffImg.getWidth() / 2, buffImg.getHeight() / 2, null);
			g.setComposite(AlphaComposite.getInstance(AlphaComposite.SRC_OVER));
			g.dispose();
			// 生成图片
			os = new ByteArrayOutputStream();
			ImageIO.write(buffImg, "JPG", os);
			os.flush();
			System.out.println("图片完成添加Icon印章。。。。。。");
			return os;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("图片加水印出现异常---------------------");
			return null;
		} finally {
		}
	}

	/**
	 * 写死的图片加水印-适用于该项目
	 * 
	 * @author QiaoShipeng
	 * @param iconPath
	 * @param srcInputStream
	 * @param degree
	 * @return date: 2015年11月12日 下午9:31:26
	 * @throws FileNotFoundException
	 */
	public static ByteArrayOutputStream buildImageByIcon(String iconPath, InputStream srcInputStream, Integer degree) {
		return markImageByIcon(iconPath, srcInputStream, degree);
	}

	public static void main(String[] args) {
		String icon = "d:/a.png";
		String scr = "d:/1.jpg";
		String tager = "d:/b.jpg";
		markImageByIcon(icon, scr, tager, 40);
	}
}
