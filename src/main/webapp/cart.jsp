<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, com.net.product.productBean.*, com.net.product.productDAO.ProductDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>

 <!-- CSS -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <style> 
         .banner-background{
               clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 62% 86%, 36% 100%, 0 100%, 0 0);
         } 
     </style>
</head>
<body>

<%@include file="user/userNavbar.jsp" %>>
    <h1>Your Shopping Cart</h1>
    <table border="1">
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Subtotal</th>
        </tr>
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart != null) {
                ProductDAO productDAO = new ProductDAO();
                double total = 0.0;
                for (Map.Entry<Integer, Integer> entry : cart.getItems().entrySet()) {
                    int productId = entry.getKey();
                    int quantity = entry.getValue();
                    Product product = productDAO.getProductById(productId);
                    double subtotal = product.getPrice() * quantity;
                    total += subtotal;
        %>
        <tr>
            <td><%= product.getName() %></td>
            <td><%= quantity %></td>
            <td><%= product.getPrice() %></td>
            <td><%= subtotal %></td>
        </tr>
        <% } %>
        <tr>
            <td colspan="3">Total</td>
            <td><%= total %></td>
        </tr>
    </table>
    <form action="checkout.jsp" method="post">
        <input type="submit" value="Checkout">
    </form>




<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="JS/myjs.js" type="text/javascript"></script>
</body>
</html>