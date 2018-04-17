package cn.codelion.core.util;


public class ImgIdGenerator {

	private static final char[] digits = { '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'm', 'n', 'p',
			'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y' };
	public synchronized static String create() {
		long paramInt1 = System.currentTimeMillis()-1445829714320L;
		char[] arrayOfChar = new char[32];
		int i = 32;
		int j = 1 << 5;
		int k = j - 1;
		do {
			arrayOfChar[(--i)] = digits[(int) (paramInt1 & k)];
			paramInt1 >>>= 5;
		} while (paramInt1 != 0);
		try {
            Thread.sleep(1);
        } catch (InterruptedException e) {
            e.printStackTrace(); 
        }
		return new String(arrayOfChar, i, 32 - i);
	}

	public static void main(String[] args) {
//		long startTime = System.currentTimeMillis();
//		String a="";
//		for(int i=0;i<9999;i++){
//			 a = create();
//			System.out.println(a);
//		}
//		// a = create();
//		long endTime = System.currentTimeMillis();
//
//		System.out.println(a+ "_______" + System.currentTimeMillis() + "_______" + "time:" + (endTime - startTime));
	}
}
