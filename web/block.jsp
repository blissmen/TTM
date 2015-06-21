<%-- 
    Document   : block
    Created on : Jun 13, 2015, 8:35:57 AM
    Author     : Yanick
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Block List</title>
    </head>
    <body>
        <h1>Time Table Analyzer!</h1>
        <form method="post" action="block">
            Enter The Period <input type="number" name="period" required="true" />
        <br /> 
        <input type="submit" name="sumit" value="fetch" />
        </form>
        <div>
            Result Display
            <br />
            Department Members free at this time are
            Teacher Name: 
            <c:forEach items="${natte}" var="nate" > 
                <c:out value="${nate}" /> 
            </c:forEach>
                <br />
        </div>
        
    </body>
</html>
