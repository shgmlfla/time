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
    <script>
    	document.getElementBtId("form").onsubmit = function
    </script>
    <title>�ð�ǥ</title>
  </head>
  <body>
    <h1>�ð�ǥ</h1>
    <form action="#">
	    <select name="subject">
	        <option value="math">����</option>
	        <option vlaue="korea">����</option>
	        <option value="science">����</option>
	        <option value="����">����</option>
	        <option value="��ȸ">��ȸ</option>
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