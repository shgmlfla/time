<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		String ip = "";
		int port = 0000;
		String database = "";
		String user = "";
		String password = "";
		
		String DRIVER_NAME = "com.tmax.tibero.jdbc.TbDriver";
		String TIBERO_JDBC_URL = "jdbc:tibero:thin:@" + ip + ":" + port + ":" + database;
		
		String keyValue = request.getParameter("KEY_VALUE");
		String col01 = request.getParameter("COL01");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
			
		Class.forName(DRIVER_NAME);
		conn = DriverManager.getConnection(TIBERO_JDBC_URL, user, password);
		
	%>
