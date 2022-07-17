<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list for loop</title>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
<% 
	ArrayList<String> list = new ArrayList<String>();
	list.add("감자튀김");
	list.add("노가리");
	list.add("골뱅이");
%>
<table>
	<tr>
		<td>순번</td>
		<td>메뉴</td>
	</tr>
	
	<% 
		for(int i=0; i<list.size(); i++){
	%>
		<tr>
			<td><%=i+1 %></td>
			<td><%=list.get(i)%></td>
		</tr>
	<%
		}
	%>
	
</table>
</body>
</html>