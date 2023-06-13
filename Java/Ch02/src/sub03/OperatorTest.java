package sub03;
import javax.script.ScriptContext;

/*
 * 날짜 : 2023/06/13
 * 이름 : 윤경엽
 * 내용 : JAVA 연선자 실습
 * 
 * 연산자(Operator)
 * -변수의 데이터를 처리하기 위한 연산식
 * -일반적으로 산술,복하배입,비교,논리연산을 수행
 */
public class OperatorTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int num1 = 1;
		int num2 = 2;
		int num3 = 3;
		int num4 = 4;
		
		//산술연산자
		int result = num1 + num2;
		int result2 = num1 - num2;
		int result3 = num3 * num4;
		int result4 = num4 / num3;
		int result5 = num4 % num3;
		
		System.out.println(result);
		System.out.println(result2);
		System.out.println(result3);
		System.out.println(result4);
		System.out.println(result5);
		//증감연산자
		
		int num = 0;
		num++;
		++num; 
		System.out.println("num++ = " + num);
		
		num--;
		--num;
		
		System.out.println("num-- = " + num);
		//복합연산자
		
		int n1 = 1 , n2 = 2 , n3 = 3, n4 = 4;
		
		 n1+=1;
		 n2-=2;
		 n3*=3;
		 n4/=4;
		 
		 System.out.println("n1 += 1 " + n1);
		 System.out.println("n2 -= 2" + n2);
		 System.out.println("n3 *= 3" + n3);
		 System.out.println("n4 /= 4" + n4);
		 
		//비교연산자
		 
		 int var1 = 1;
		 int var2 = 2;
		 
		 boolean rs1 = var1 > var2;
		 boolean rs2 = var1 < var2;
		 boolean rs3 = var1 >= var2;
		 boolean rs4 = var1 <= var2;
		 boolean rs5 = var1 == var2;
		 boolean rs6 = var1 != var2;
		 
		 System.out.println("var1 > var2 = " + rs1);
		 System.out.println("var1 < var2 = " + rs2);
		 System.out.println("var1 >= var2 = " + rs3);
		 System.out.println("var1 <= var2 = " + rs4);
		 System.out.println("var1 == var2 = " + rs5);
		 System.out.println("var1 != var2 = " + rs6);
		 
		//논리연산자
		int var3 = 3;
		int var4 = 4;
		
		boolean res1 = (var3 > 3) && (var4 > 3);
		boolean res2 = (var3 > 2) && (var4 > 3);
		boolean res3 = (var3 > 3) || (var4 > 3);
		boolean res4 = (var3 > 3) || (var4 > 4);
		boolean res5 = !(var3 > var4);
		
		System.out.println("(var3 > 3) && (var4 > 3)"  + res1);
		System.out.println("(var3 > 2) && (var4 > 3)"  + res2);
		System.out.println("(var3 > 3) || (var4 > 3)"  + res3);
		System.out.println("(var3 > 3) || (var4 > 4)"  + res4);
		System.out.println("!(var3 > var4)" + res5);
		
		
		
	}

}
