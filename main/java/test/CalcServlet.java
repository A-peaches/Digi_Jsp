package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CalcServlet")
//클래스 선언. HttpServlet을 상속받는다.
public class CalcServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		//변수 선언
		int num1,num2;
		int result;
		String op;
		
		//클라이언트 응답시 전달될 컨텐츠에 대한 mime type 과 캐릭터셋지정
		res.setContentType("text/html; charset=euc-kr");
		
		//클라이언트 응답을 위한 출력 스트림 확보
		PrintWriter out = res.getWriter();
		
		//HTML form을 통해 전달된 num1, num2 패러미터 값을 변수에 할당.
		//이때 getParameter() 메서드는 문자열을 리턴하므로 숫자형 데이터ㅓ의 경우 Integer.parseInt()를 사용하여 타입변환.
		num1 = Integer.parseInt(req.getParameter("num1"));
		num2 = Integer.parseInt(req.getParameter("num2"));
		op = req.getParameter("op");
		//calc()메서드 호출로 결과 받아옴
//		result = calc(num1,num2,op);
//		
		Calc calc = new Calc(num1,num2,op);
		result = calc.getResult();
		
		//출력 스트림을 통해 화면구성
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Calculator</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>계산결과</H2>");
		out.println("<HR>");
		out.println(num1 + " " + op + " " + num2 + " = " + result);
		out.println("</BODY><HTML>");
	}


}