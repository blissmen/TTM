<%-- 
    Document   : freelist
    Created on : Jun 13, 2015, 8:35:43 AM
    Author     : Yanick
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FREE LIST GENERATOR</title>
    </head>
    <body>
        <h1>WELCOME TO THE FREE LIST MODULE</h1>
        <form action='freelist' method="post">
            <select name="select">
                
                <option id="first" value="1">CLASS ID</option><br />
                <option id="sec" value="2">Teacher ID</option>
                
            </select>
                   
            ID <input required="true" type="text" name="id" placeholder="Teacher or Class ID">
            <input type="submit" value="Get">
        </form>
        
        <br />
        
        <table border="1" width="200px" cellpadding="3px"
               cellspacing="5px">
           
            <tr><th>Monday</th><th>Tuesday</th><th>Wednesday</th><th>Thursday</th><th>Friday</th><th>Saturday</th></tr>
            <tr>
                <td>
                   <c:forEach items="${record}" var="records" begin="0" end="0"> 
                      <c:forEach items="${records}" var ="day"> <c:out value="${day}" /><br/></c:forEach>
                   </c:forEach>
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="1" end="1">
                       <c:forEach items="${records}" var ="day"> <c:out value="${day}" /><br/> </c:forEach>
                   </c:forEach>
                </td>
                <td>
                    <c:forEach items="${record}" var="records" begin="2" end="2">
                         <c:forEach items="${records}" var ="day"> <c:out value="${day}" /><br/> </c:forEach>
                    </c:forEach>
                </td>
                <td>
                    <c:forEach items="${record}" var="records" begin="3" end="3">
                         <c:forEach items="${records}" var ="day"> <c:out value="${day}" /><br/> </c:forEach>
                     </c:forEach>
                </td>
                <td>  
                    <c:forEach items="${record}" var="records" begin="4" end="4">
                        <c:forEach items="${records}" var ="day"> <c:out value="${day}" /><br/> </c:forEach>
                    </c:forEach>
                </td>
                <td>
                    <c:forEach items="${record}" var="records" begin="5" end="5">
                         <c:forEach items="${records}" var ="day"> <c:out value="${day}" /><br/> </c:forEach>
                    </c:forEach>
                </td>
               </tr>
        </table>
        
    </body>
</html>
