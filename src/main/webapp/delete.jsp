<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="driver.jsp"%>
	<% 

		String sql = "DELETE FROM TEMP WHERE KEY_VAL = 'hlnoe_subject' AND COL02 = 16;";
		
		pstmt = conn.prepareStatement(sql);
		
		int rowCount = pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	%>

</body>
</html>