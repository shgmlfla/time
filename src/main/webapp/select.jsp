<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="driver.jsp"%>
	<% 
 		String sql = "SELECT KEY_VAL, COL01, COL02 FROM TEMP where KEY_VAL = 'hlnoe_subject' ORDER BY COL02*1;";
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);
		ArrayList<String> arrList = new ArrayList<String>();
		
		while (rs.next())
		{
			String col1 = rs.getString("COL01");
			String col2 = rs.getString("COL02");
			
		/* 	ArrayList<String> arrList = new ArrayList<String>(); */
			arrList.add(col1);
		}
		rs.close();
		stmt.close();
		conn.close();
		%>
		<h1>�ð�ǥ</h1>
    <form action="/insert.jsp" method="get" accept-charset="utf-8">
	    <select name="subject">
	        <option value="����">����</option>
	        <option vlaue="����">����</option>
	        <option value="����">����</option>
	        <option value="����">����</option>
	        <option value="��ȸ">��ȸ</option>
	    </select>
	    <select name="day">
	        <option value="��">��</option>
	        <option vlaue="ȭ">ȭ</option>
	        <option value="��">��</option>
	        <option value="��">��</option>
	        <option value="��">��</option>
	    </select>
	    <select name="time">
	        <option value="1">1����</option>
	        <option vlaue="2">2����</option>
	        <option value="3">3����</option>
	        <option value="4">4����</option>
	        <option value="5">5����</option>
	    </select>
	    <input type ="submit" value="Submit">
    </form>


    <table class = "table">
        <tr text-align="center">
            <th>����</th>
            <th>��</th>
            <th>ȭ</th>
            <th>��</th>
            <th>��</th>
            <th>��</th>
        </tr>
        <tr>
            <th>1</th>
            
            <td><%= arrList.get(0) %></td>
            <td><%= arrList.get(1) %></td>
            <td><%= arrList.get(3) %></td>
            <td><%= arrList.get(4) %></td>
            <td><%= arrList.get(5) %></td>
        </tr>
        
       <%--  <tr>
            <th>2</th>
            <td><%= arrList.get(6) %></td>
            <td><%= arrList.get(7) %></td>
            <td><%= arrList.get(8) %></td>
            <td><%= arrList.get(9) %></td>
            <td><%= arrList.get(10) %></td>
        </tr>
        <tr>
            <th>3</th>
            <td><%= arrList.get(11) %></td>
            <td><%= arrList.get(12) %></td>
            <td><%= arrList.get(13) %></td>
            <td><%= arrList.get(14) %></td>
            <td><%= arrList.get(15) %></td>
        </tr>
        <tr>
            <th>4</th>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <th>5</th>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr> --%>
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