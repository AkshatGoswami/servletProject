<%@page import="com.net.user.userDAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "obj" class="com.net.user.userBean.UserBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	 int status = UserDAO.Login(obj);
	System.out.println(obj.getName());
	System.out.print(status);
	if(status == 1){
		//out.print("<br> Registration sucesss.....");
		
		session.setAttribute("studentname",obj.getEmail()); 
		out.print("<script> alert('Login Sucess....'); "
		+" window.open('userPanel.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Login Failed....'); "
		+" window.open('../login.jsp','_self')</script>");	}
	%>
	
</body>
</html>