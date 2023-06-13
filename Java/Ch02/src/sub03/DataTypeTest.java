package sub03;
/*
 * 날짜 : 2023/06/12
 * 이름 : 윤경엽
 * 내용 : Java 자료형 실습
 * 
 * 자료형(DataType)
 * -변수에 저장되는 데이터의 종류와 크기를 나타낸 키워드
 * - 자료형은 기본형과 참조형(객체)으로 나뉨
 */
public class DataTypeTest {

	public static void main(String[] args) {
		
		//정수형
		byte num1 = 127; //127까지만 저장가능 8개의비트중 맨앞은 부호 나머지 7 개를 10진수화 시키면 127 
		short num2 = 32767; //32767 까지 저장가능
		int num3 = 2147483647;
		long num4 = 92233720368547707L;
		
		System.out.println("num1 = " +  num1);
		System.out.println("num2 = " +  num2);
		System.out.println("num3 = " +  num3);
		System.out.println("num4 = " +  num4);
		
		//실수형
		float var1 = 0.123456789f;//8자리까지 출력가능
		double var2 = 0.1234567890123456789; //17자리까지출력가능
		
		System.out.println(var1);
		System.out.println(var2);
		
		//논리형
		boolean data1 = true;
		boolean data2 = false;
		
		System.out.println(data1);
		System.out.println(data2);
		
		//문자형 (문자하나만 출력가능)
		char c1 = 'A';
		char c2 = '가';
		
		System.out.println(c1);
		System.out.println(c2);
		
		//문자열
		String str1 = "ABC";
		String str2 = "가나다";
		
		System.out.println(str1);
		System.out.println(str2);
	}

}
