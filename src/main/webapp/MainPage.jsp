<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <style type = "text/css">
        .table{
            border : 1px solid;
        }
    </style>
    <title>�ð�ǥ</title>
  </head>
  <body>
    <h1>�ð�ǥ</h1>
    <form action="/insert.jsp" method="get" accept-charset="utf-8">
	    <select name="subject">
	        <option value="MAT">����</option>
	        <option vlaue="KOR">����</option>
	        <option value="SCI">����</option>
	        <option value="ENG">����</option>
	        <option value="SOC">��ȸ</option>
	    </select>
	    <select name="day">
	        <option value="MON">��</option>
	        <option vlaue="TUE">ȭ</option>
	        <option value="WED">��</option>
	        <option value="THU">��</option>
	        <option value="FRI">��</option>
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
            <td>����</td>
            <td>����</td>
            <td>����</td>
            <td>����</td>
            <td>�̼�</td>
        </tr>
        <tr>
            <th>2</th>
            <td>ȭ��</td>
            <td>�̼�</td>
            <td>ü��</td>
            <td>����</td>
            <td>����</td>
        </tr>
        <tr>
            <th>3</th>
            <td>�Ϻ���</td>
            <td>����</td>
            <td>����</td>
            <td>�߱���</td>
            <td>ü��</td>
        </tr>
        <tr>
            <th>4</th>
            <td>����</td>
            <td>����</td>
            <td>�̼�</td>
            <td>ü��</td>
            <td>��ȸ</td>
        </tr>
        <tr>
            <th>5</th>
            <td>����</td>
            <td>����</td>
            <td>��ȸ</td>
            <td>�̼�</td>
            <td>����</td>
        </tr>
    </table>
</body>
</html>