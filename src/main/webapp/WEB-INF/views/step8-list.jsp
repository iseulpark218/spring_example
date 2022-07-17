<%@page import="model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>step8-list.jsp</title>
<!-- <link type="text/css" rel="stylesheet" href="css/mystyle.css"> -->
</head>
<body>
<%
	ArrayList<MemberVO> list = new ArrayList<MemberVO>();
	list.add(new MemberVO("java", "파프리카", "판교", "남"));
	list.add(new MemberVO("tomcat", "당근", "제주", "여"));
	list.add(new MemberVO("model2", "파프리카", "LA", "여"));
%>
	<table>
	
		<thead>
			<tr>
				<th>순번</th>
				<th>이름</th>
				<th>주소</th>
				<th>성별</th>
			</tr>
		</thead>
		
		<tbody>
			<%-- tr td를 list를 이용해서 동적으로 생성하되,
				이름부분은 링크를 부여해 id가 전송되도록 한다
				(id가 Primary Key라는 전재)
			 --%>
			<%  for(int i=0; i<list.size(); i++) { %>
				<tr>
					<% String id = list.get(i).getId(); %>
					<td><%=i+1 %></td>
					<td> <%-- name부분에 링크 부여(query string방식으로 id값 주기) --%>
					<a href = "step8-action.jsp?id=<%=id%>">
					<%=list.get(i).getName() %></a>
					</td>
					<td><%=list.get(i).getAddress() %></td>	
					<td><%=list.get(i).getGender() %></td>
				</tr>
			<% } %>
		</tbody>
	</table>
</body>
</html>