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
	<h1>�ð�ǥ</h1>
	<form method="get" accept-charset="utf-8">
		<select name="subject">
			<option value="MAT">����</option>
			<option value="KOR">����</option>
			<option value="SCI">����</option>
			<option value="ENG">����</option>
			<option value="SOC">��ȸ</option>
		</select> <select name="day">
			<option value="MON">��</option>
			<option value="TUE">ȭ</option>
			<option value="WED">��</option>
			<option value="THU">��</option>
			<option value="FRI">��</option>
		</select> <select name="time_class">
			<option value="1">1����</option>
			<option value="2">2����</option>
			<option value="3">3����</option>
			<option value="4">4����</option>
			<option value="5">5����</option>
			<option value="6">6����</option>
			<option value="7">7����</option>
		</select> <input type="submit" value="Submit" formaction="/insert.jsp">
		<input type="submit" value="Delete" formaction="/delete.jsp">
		<input type="submit" value="Update" formaction="/update.jsp">

	</form>
	<%-- <td><span style='color:<?= ($���� >= 500) ? 'yellow':'black'; ?>'><?= $����; ?></span></td> --%>
	<table class="table">
		<tr text-align="center">
			<th>����</th>
			<th>��</th>
			<th>ȭ</th>
			<th>��</th>
			<th>��</th>
			<th>��</th>
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