<%-- 
    Document   : individual
    Created on : Jun 13, 2015, 8:36:16 AM
    Author     : Yanick
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual LIST</title>
    </head>
    <body>
        <h1>Get the Individual list here</h1>
        <div style="">
            
            <form  action='individual' method="gwt" >
              Enter the Course Code  <input type="text" name="CourseCode"  required="true" placeholder="Ener course Code" />
              <input type="submit" name="sumit" value="fetch">
              
            </form>
            
            <div>
                Results
                Teacher Name:
                <c:forEach items="${techer}" var="name">
                    <c:out value="${name}" />
                </c:forEach>
                <br />
                Courses Name:<c:forEach items="${nameC}" var="nae"><c:out value="${nae}" /></c:forEach>
                <br />
                
                
            </div>
            
            
        </div>
    </body>
</html>
