<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.MemberDAO,bean.MemberVO"%>
<%@ page import="common.FileUpload" %>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		MemberVO u = new MemberVO();
		u.setSid(id);
		MemberDAO memberDAO = new MemberDAO();
		String filename = memberDAO.getPhotoFilename(id);
		if(filename != null)
			FileUpload.deleteFile(request,filename);
		memberDAO.deleteMember(u);
	}
	response.sendRedirect("posts.jsp");
%>