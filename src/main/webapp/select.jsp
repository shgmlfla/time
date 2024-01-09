<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*,test.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<%
	Connection conn = JDBCConnection.getJDBCConnection();
	PreparedStatement pstmt = null;
	
	try{
		conn.setAutoCommit(false);
		
		StringBuffer sql = new StringBuffer();
		sql.append("select");
		sql.append("from");
	
		Statement stmt = conn.createStatement();
	
		ResultSet rs = stmt.executeQuery(sql.toString());
		ArrayList<String> arrList = new ArrayList<String>();
	
		while (rs.next()) {
			String time_subject = rs.getString("TIME_SUBJECT");
			String time_day = rs.getString("TIME_DAY");
			String time_class = rs.getString("TIME_CLASS");
	
			arrList.add(time_subject);
			arrList.add(time_day);
			arrList.add(time_class);
	
		}

	} catch(Exception e){
		if (conn != null){
			try{
				conn.rollback();
			}catch (Exception ex){
				System.out.println(ex);
			}
		}
	} finally{
		rs.close();
		stmt.close();
		conn.close();
	}
	%>
	<h1>시간표</h1>
	<form method="get" accept-charset="utf-8">
		<select name="subject">
			<option value="MAT">수학</option>
			<option value="KOR">국어</option>
			<option value="SCI">과학</option>
			<option value="ENG">영어</option>
			<option value="SOC">사회</option>
		</select> <select name="day">
			<option value="MON">월</option>
			<option value="TUE">화</option>
			<option value="WED">수</option>
			<option value="THU">목</option>
			<option value="FRI">금</option>
		</select> <select name="time_class">
			<option value="1">1교시</option>
			<option value="2">2교시</option>
			<option value="3">3교시</option>
			<option value="4">4교시</option>
			<option value="5">5교시</option>
			<option value="6">6교시</option>
			<option value="7">7교시</option>
		</select> <input type="submit" value="Submit" formaction="/insert.jsp">
		<input type="submit" value="Delete" formaction="/delete.jsp">
		<input type="submit" value="Update" formaction="/update.jsp">

	</form>
	<%-- <td><span style='color:<?= ($수학 >= 500) ? 'yellow':'black'; ?>'><?= $수학; ?></span></td> --%>
	<table class="table">
		<tr text-align="center">
			<th>교시</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
		</tr>
				
	</table>
	<%-- <%
		}
		rs.close();
		stmt.close();
		conn.close();
	%>
 --%>

</body>
</html>