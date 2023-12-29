<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	String time = request.getParameter("time");

	System.out.println(subject);
	System.out.println(day);
	System.out.println(time);

	try {
		conn.setAutoCommit(false);

		//SQL문
		String sql = "insert into temp(KEY_VAL, COL01, COL02) values ('hlnoe_subject', '" + subject + "', '19');";

		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
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