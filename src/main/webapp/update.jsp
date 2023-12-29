<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="driver.jsp"%>
	<%	
		
		
		//SQL문
		String sql = "UPDATE TEMP SET COL01 = '생명2' WHERE COL02 = '6' AND KEY_VAL = 'hlnoe_subject'";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();		
		
	%>
</body>
</html>