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

	StringBuffer sql = new StringBuffer();
	sql.append(" SELECT B.COL02 TIME_SUBJECT, C.COL02 TIME_DAY, D.COL02 TIME_CLASS");
	sql.append("FROM (SELECT COL01, COL02, COL03 FROM TEMP WHERE KEY_VAL = 'hlnoe_timeschedule')");
	sql.append(" LEFT JOIN(SELECT COL01, COL02 FROM TEMP WHERE KEY_VAL = 'hlnoe_subject')");
	sql.append(" LEFT JOIN (SELECT COL01, COL02, COL03 FROM TEMP WHERE KEY_VAL = 'hlnoe_day') \n");
	sql.append(" C ON A.COL02 = C.COL01 \n" + " LEFT JOIN(SELECT COL01, COL02 FROM TEMP WHERE KEY_VAL = 'hlnoe_class') \n"
	sql.append	+ " D ON A.COL03 = D.COL01 \n" + " ORDER BY D.COL02, C.COL03;");

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

	String[][] TimeArray = new String[arrList.size() / 3][3];
	for (int i = 0; i < arrList.size(); i += 3) {
		TimeArray[i / 3][0] = arrList.get(i);
		TimeArray[i / 3][1] = arrList.get(i + 1);
		TimeArray[i / 3][2] = arrList.get(i + 2);
	}
/* 	System.out.println(Arrays.deepToString(TimeArray)); */
	
	String[][] arr = new String[7][5];
	for (int i = 0; i < TimeArray.length; i++) {
		String day = TimeArray[i][1];
		String a = TimeArray[i][2].replaceAll("[^0-9]", ""); //1���� -> 1
		int b = Integer.parseInt(a);

		switch (day) {
		case "��":
			arr[b - 1][0] = TimeArray[i][0];
			break;

		case "ȭ":
			arr[b - 1][1] = TimeArray[i][0];
			break;

		case "��":
			arr[b - 1][2] = TimeArray[i][0];
			break;

		case "��":
			arr[b - 1][3] = TimeArray[i][0];
			break;

		case "��":
			arr[b - 1][4] = TimeArray[i][0];
			break;
		default:
			break;

		}

	}
	/* 	System.out.println(Arrays.deepToString(arr)); */

	rs.close();
	stmt.close();
	conn.close();
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

	<table class="table">
		<tr text-align="center">
			<th>����</th>
			<th>��</th>
			<th>ȭ</th>
			<th>��</th>
			<th>��</th>
			<th>��</th>
		</tr>
		<%
		for (int i = 0; i < arr.length; i++) {
		%>
		<tr>
			<th><%=i + 1%>����</th>
			<%
			for (int j = 0; j < 5; j++) {
			%>
			<td><%=arr[i][j]%></td>
			<%
			}
			}
			%>
		
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