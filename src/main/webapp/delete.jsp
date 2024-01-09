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
	String subject = request.getParameter("subject");
	String day = request.getParameter("day");
	String time_class = request.getParameter("time_class");
	
	try {
		conn.setAutoCommit(false);
		
		StringBuffer sql = new StringBuffer( 
				"DELETE FROM TEMP WHERE KEY_VAL = 'hlnoe_timeschedule' AND COL02 = '" + day +"' AND COL03 = '" + time_class +"';");
	
		pstmt = conn.prepareStatement(sql.toString());
		int rowCount = pstmt.executeUpdate();
		conn.commit();

	} catch (Exception e) {
		if (conn != null) {
			conn.rollback();
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