<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.MemberDAO"%>
<%@page import="common.FileUpload"%>
<%@page import="bean.MemberVO"%>



<% request.setCharacterEncoding("utf-8"); %>

<jsp:setProperty property="*" name="u"/>

<%
	MemberDAO memberDAO = new MemberDAO();
	FileUpload upload = new FileUpload();
	MemberVO u = upload.uploadPhoto(request);
	int i=memberDAO.updateMember(u);
	response.sendRedirect("posts.jsp");
	String msg = "데이터 편집 성공 !";
	if(i == 0) msg = "[에러] 데이터 편집 ";
%>

<script>
	alert('<%=msg%>');
	location.href='posts.jsp';
</script>