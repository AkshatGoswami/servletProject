<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "obj" class="com.net.admin.adminBean.AdminBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	 int status = AdminDAO.Register(obj);
	System.out.println(obj.getName());
	System.out.print(status);
	if(status == 1){
		//out.print("<br> Registration sucesss.....");
		
		session.setAttribute("aid",obj.getAid()); 
		out.print("<script> alert('Register Sucess....'); "
		+" window.open('../index.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Register Failed....'); "
		+" window.open('../register_page.jsp','_self')</script>");	}
	%>
	
</body>
</html>