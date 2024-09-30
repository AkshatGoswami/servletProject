<%@page import="java.sql.ResultSet"%>
<%@page import="com.net.admin.adminDAO.AdminDAO"%>
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
	<jsp:useBean id = "obj" class="com.net.admin.adminBean.AdminBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	int aid = Integer.MIN_VALUE;
	 int status = AdminDAO.Login(obj);
	System.out.println(obj.getEmail());
	System.out.print(status);
	if(status == 1){
		//out.print("<br> Registration sucesss.....");
		
		session.setAttribute("adminname",obj.getEmail()); 
		
		//ResultSet rs = AdminDAO.getId(obj.getName());
		//while(rs.next()){
		//	 aid = rs.getInt(1);
		//	 System.out.println(aid);
			 //System.out.println(session.getMaxInactiveInterval());
		//	};

		//session.setAttribute("aid",rs.getInt(1)); 
		
		out.print("<script> alert('Login Success....'); "
		+" window.open('adminPanel.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Login Failed....'); "
		+" window.open('../adminlogin.jsp','_self')</script>");	}
	%>
	
</body>
</html>