<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%
	String uploadPath = request.getRealPath("upload");

	int size = 10*1024*1024;
	String name= "";
	String subject="";
	String fileName1="";
	String fileName2="";
	
	try {
		MultipartRequest multi = new MultipartRequest(request,
								uploadPath,
								size,
								"euc-kr",
								new DefaultFileRenamePolicy());
				name=multi.getParameter("name");
				subject=multi.getParameter("subject");
				
				Enumeration files=multi.getFileNames();
				
				String file1= (String)files.nextElement();
				fileName1=multi.getFilesystemName(file1);
				String file2= (String)files.nextElement();
				fileName2=multi.getFilesystemName(file2);
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>File upload</title>
<link rel="styleSheet" type="text/css" href="../../CSS.css">
</head>
<body>
	<form name="filecheck" action="fileCheck.jsp" method="post">
		<input type="hidden" name ="name" value="<%=name %>"/>
		<input type="hidden" name ="subject" value="<%=subject %>"/>
		<input type="hidden" name ="fileName1" value="<%=fileName1 %>"/>
		<input type="hidden" name ="fileName2" value="<%=fileName2 %>"/>
	</form>
	<a href="#" onclick="javascript:filecheck.submit()">업로드 확인 및 다운로드 페이지 이동</a>
</body>
</html>