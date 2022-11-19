<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.MemberDAO"%>
<%@ page import="bean.MemberVO" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="bean.MemberVO" />
<jsp:setProperty property="*" name="u"/>

<%
	MemberDAO memberDAO = new MemberDAO();
//	FileUpload upload = new FileUpload();
//	BoardVO u = upload.uploadPhoto(request);
	int i = memberDAO.insertMember(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 추가 ";

%>

<script>
	alert('<%=msg%>');
	location.href='posts.jsp';
</script>