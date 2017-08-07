<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import = "java.sql.*, java.util.*" %>
<%@ page import="com.delfines.member.MemberDBBean" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="article" scope="page" class="com.delfines.member.MemberDataBean">
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%!
	String member_id, member_pwd;
%>

<%
	member_id = request.getParameter("member_id");
	member_pwd = request.getParameter("member_pwd");
	
	MemberDBBean dbPro = MemberDBBean.getInstance();
	boolean existenceID = dbPro.getMemberID(member_id);
	
	int result = 0;
	
	if(existenceID == true){ // 존재하는 아이디냐?
		
	}else{
		result = -1;
	}
%>
<%=result%>