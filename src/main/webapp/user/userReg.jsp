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
	 int status = UserDAO.Register(obj);
	//System.out.println(obj.getName());
	//System.out.print(status);
	if(status == 1){
		session.setAttribute("studentname",obj.getName()); 
		out.print("<script> alert('Register Sucess....'); "
		+" window.open('../index.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Register Failed....'); "
		+" window.open('../Register.jsp','_self')</script>");	}
	%>
	
</body>
</html>