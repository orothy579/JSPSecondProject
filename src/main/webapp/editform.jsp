<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="dao.MemberDAO, bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	MemberDAO memberDAO = new MemberDAO();
	String id=request.getParameter("id");	
	MemberVO u=memberDAO.getMember(Integer.parseInt(id));
	request.setAttribute("vo",u);
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post" enctype="multipart/form-data">
<input type="hidden" name="sid" value="<%=u.getSid() %>"/>
<table>
	<tr><td>Userid:</td><td><input type="text" name="userid"/></td></tr>
	<tr><td>Password:</td><td><input type="text" name="password"/></td></tr>
	<tr><td>Username:</td><td><input type="text" name="username"/></td></tr>
	<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
	<tr><td>Photo:</td><td><input type="file" name="photo" value="${vo.photo}"/>
	<c:if test="${vo.photo ne ''}" > <br /><img src = "${pageContext.request.contextPath }/upload/${vo.photo}" class="photo"></c:if></td></tr>
	<tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail"></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>