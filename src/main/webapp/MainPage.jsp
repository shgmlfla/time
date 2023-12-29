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
    <title>시간표</title>
  </head>
  <body>
    <h1>시간표</h1>
    <form action="/insert.jsp" method="get" accept-charset="utf-8">
	    <select name="subject">
	        <option value="수학">수학</option>
	        <option vlaue="국어">국어</option>
	        <option value="과학">과학</option>
	        <option value="영어">영어</option>
	        <option value="사회">사회</option>
	    </select>
	    <select name="day">
	        <option value="월">월</option>
	        <option vlaue="화">화</option>
	        <option value="수">수</option>
	        <option value="목">목</option>
	        <option value="목">금</option>
	    </select>
	    <select name="time">
	        <option value="1">1교시</option>
	        <option vlaue="2">2교시</option>
	        <option value="3">3교시</option>
	        <option value="4">4교시</option>
	        <option value="5">5교시</option>
	    </select>
	    <input type ="submit" value="Submit">
    </form>


    <table class = "table">
        <tr text-align="center">
            <th>교시</th>
            <th>월</th>
            <th>화</th>
            <th>수</th>
            <th>목</th>
            <th>금</th>
        </tr>
        <tr>
            <th>1</th>
            <td>수학</td>
            <td>수학</td>
            <td>생명</td>
            <td>역사</td>
            <td>미술</td>
        </tr>
        <tr>
            <th>2</th>
            <td>화학</td>
            <td>미술</td>
            <td>체육</td>
            <td>역사</td>
            <td>지리</td>
        </tr>
        <tr>
            <th>3</th>
            <td>일본어</td>
            <td>영어</td>
            <td>국어</td>
            <td>중국어</td>
            <td>체육</td>
        </tr>
        <tr>
            <th>4</th>
            <td>국어</td>
            <td>국어</td>
            <td>미술</td>
            <td>체육</td>
            <td>사회</td>
        </tr>
        <tr>
            <th>5</th>
            <td>국어</td>
            <td>수학</td>
            <td>사회</td>
            <td>미술</td>
            <td>영어</td>
        </tr>
    </table>
</body>
</html>