<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*,test.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String subject = request.getParameter("subject");
	String day = request.getParameter("day");
	String time_class = request.getParameter("time_class");

	System.out.println(subject);
	System.out.println(day);
	System.out.println(time_class);

	Connection conn = JDBCConnection.getJDBCConnection();
	PreparedStatement pstmt = null;

	try {
		conn.setAutoCommit(false);
		
		//SQL문
/* 		StringBuffer sql = new StringBuffer();
		sql.append("insert into TEMP(KEY_VAL, COL01, COL02, COL03, COL04)"
		+ "values('hlnoe_timeschedule'," + subject + "," + day + "," + time_class + ",test);"); 	 */
		
		/* StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO TEMP(KEY_VAL, COL01, COL02, COL03, COL04) VALUES('hlnoe_timeschedule', '" 
				+ subject + "', '"+ day + "', '" + time_class + "', 'TEST')"); */

		StringBuffer sql = new StringBuffer( 
		"INSERT INTO TEMP(KEY_VAL, COL01, COL02, COL03, COL04) VALUES('hlnoe_timeschedule', '" 
		+subject+ "', '"+day+ "', '" +time_class+ "', 'TEST')"); 
	
		pstmt = conn.prepareStatement(sql.toString());
	
		pstmt.executeUpdate();
		conn.commit();

		
	} catch (Exception e) {
		if (conn != null) {
			try {

		conn.rollback();
			} catch (Exception ex) {
		System.out.println(ex);
			}
		}

	} finally {
		pstmt.close();
		conn.close();
	}
	%>
</body>
</html>