<%-- 
    Document   : index
    Created on : Jun 10, 2015, 4:16:18 PM
    Author     : USER
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to your Time table Generator</title>
    </head>
    <body>
        <h1>LOGIN</h1>
        <div style="font: 14px; color: red;">
        <c:out value="${message}"  />
        </div>
        <form method="POST" action='loginform' name="processLogin">
        User name    <input type="text" name="user_name" placeholder="Enter User Name"/>
            <br/> <br/>
        Password <input type="password" name="passwd" required="true">    
        <input type="submit" name="submit" value="Validate">
        </form>
    </body>
</html>
