<%@page import="com.net.product.productBean.ProductBean"%>
<%@page import="com.net.product.productDAO.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "obj" class="com.net.product.productBean.ProductBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
//	String Str = request.getParameter("pid");
//	 int aid=0;
//	try {
//	     aid = Integer.parseInt(aidStr);
//	} catch (NumberFormatException e) {
 //   System.out.println("Invalid input: " + aidStr);
//	}
	 
	int pid =Integer.parseInt(request.getParameter("pid"));
	//System.out.println("pid:"+obj.getName());
	int status = ProductDAO.UpdatePro(obj , pid);
	
	System.out.println("status:"+status);
	if(status == 1){	
		out.print("<script> alert('Medicine Updated Sucessfully....'); "
		+" window.open('viewProduct.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('FAiled to Update Medicine ....'); "
		+" window.open('viewProduct.jsp','_self')</script>");	}
	%>
</body>
</html>