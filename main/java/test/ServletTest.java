package test;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.Calendar;

@WebServlet("/test_server")
public class ServletTest extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		System.out.println("옸니");
		
		//Get방식의 오버로딩
		response.setContentType("text/html");
		response.setCharacterEncoding("euc-kr");
		Calendar c=Calendar.getInstance();
		int hour=c.get(Calendar.HOUR_OF_DAY);
		int minute=c.get(Calendar.MINUTE);
		int second=c.get(Calendar.SECOND);
		PrintWriter out=response.getWriter();
		out.write("<HTML><HEAD><TITLE>ServletTest</TITLE></HEAD>");
		out.write("<BODY><H1>");
		out.write("now Time ");
		out.write(Integer.toString(hour));
		out.write("hour ");
		out.write(Integer.toString(minute));
		out.write("minute ");
		out.write(Integer.toString(second));
		out.write("second.");
		out.write("</H1></BODY></HTML>");
		out.close();
	}
}