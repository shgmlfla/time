<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*,test.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 	<%@ include file="driver.jsp"%> --%>
	<%
	String subject = request.getParameter("subject");
	String day = request.getParameter("day");
	String time_class = request.getParameter("time_class");
	

	
	Connection conn = JDBCConnection.getJDBCConnection();
	PreparedStatement pstmt = null;

	try {
		conn.setAutoCommit(false);
		/* String sql = "UPDATE TEMP SET COL01 = '" + subject +"' WHERE KEY_VAL = 'hlnoe_timeschedule' AND COL02 = '" +day+ "' AND COL03 = '" +time_class + "'"; */
		
		StringBuffer sql = new StringBuffer(
		"UPDATE TEMP SET COL01 = '" 
		+ subject +
		"' WHERE KEY_VAL = 'hlnoe_timeschedule' AND COL02 = '" 
		+day+ 
		"' AND COL03 = '" 
		+time_class + "'");
		
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

	pstmt.close();
	conn.close();
	%>
</body>
</html>