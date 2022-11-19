<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.MemberDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="bean.MemberVO" />
<jsp:setProperty property="*" name="u"/>

<%
	MemberDAO memberDAO = new MemberDAO();
	int i=memberDAO.updateMember(u);
	response.sendRedirect("posts.jsp");
	String msg = "데이터 편집 성공 !";
	if(i == 0) msg = "[에러] 데이터 편집 ";
%>

<script>
	alert('<%=msg%>');
	location.href='posts.jsp';
</script>