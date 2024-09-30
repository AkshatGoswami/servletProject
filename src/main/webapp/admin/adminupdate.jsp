<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
</head>
<body>
	<jsp:useBean id = "obj" class="com.net.admin.adminBean.AdminBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	String aidStr = request.getParameter("aid");
	 int aid=0;
	try {
	     aid = Integer.parseInt(aidStr);
	} catch (NumberFormatException e) {
    System.out.println("Invalid input: " + aidStr);
	}
	 
//	int aid = (Integer)session.getAttribute("aid");
    System.out.println(aid);
	int status = AdminDAO.UpdateProfile(obj, aid); 
	if(status == 1){	
		out.print("<script> alert('Profile Updated Sucessfully....'); "
		+" window.open('adminProfile.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('FAiled to Update Profile ....'); "
		+" window.open('adminProfile.jsp','_self')</script>");	}
	%>
</body>
</html>