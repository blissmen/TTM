<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>TIME TABLE Analyzer</title>
<meta charset="utf-8">
<link rel="stylesheet" href="styles.css" type="text/css" media="all">
</head>
<body>


<div class="spinner"></div>

<div class="extra">
<!-- do not delete or change--><div class="mycopy">Caleb, Wilma and Sebastian: <a href="http://www.myfreecsstemplates.com" class="link33">CEF502 project</a></div><!-- end -->
<div class="main1"></div>



<div class="main2">
  
<div class="bg1"></div>

<div class="grad1"></div>



<header>
  <a href="index.jsp" class="logo">    
    <div class="txt1">University of Buea</div>
    <div class="txt2">Timetable List Generator</div>
    <div class="txt3">The Best is Still to Come</div>
  </a>
</header>

<nav class="menu">
  <ul id="menu">
    <li class="nav1">
      <a href="#!/page_ABOUT">
        <span class="over1"><span class="txt1">Login</span></span>
        <span class="over2"><img src="images/splash01.png" alt="" class="img"></span>
      </a>
    </li>
    <li class="nav2">
      <a href="#!/page_SERVICES">
        <span class="over1"><span class="txt1">Generate Free List</span></span>
        <span class="over2"><img src="images/splash02.png" alt="" class="img"></span>
      </a>
    </li>
    <li class="nav3 with_ul">
      <a href="#!/page_PROJECTS">
        <span class="over1"><span class="txt1">Generate Block List</span></span>
        <span class="over2"><img src="images/splash03.png" alt="" class="img"></span>
      </a>      
    </li>
    <li class="nav4">
      <a href="#!/page_PARTNERS">
        <span class="over1"><span class="txt1">Individual List</span></span>
        <span class="over2"><img src="images/splash04.png" alt="" class="img"></span>
      </a>
    </li>
    <li class="nav5">
      <a href="#!/page_CONTACTS">
        <span class="over1"><span class="txt1">Time Table</span></span>
        <span class="over2"><img src="images/splash05.png" alt="" class="img"></span>
      </a>
    </li>
  </ul>
</nav>



<!--content -->
<article id="content">

  <ul>
          
    <li id="page_SPLASH"></li>
    
    <!-- ============ PAGE ABOUT ============= -->
    <li id="page_ABOUT">
      <div class="vl1"></div>
      <div class="vl2"></div>
    <div class="box1">
      
	  
<!--	  
      <h2>Login </h2>

      <img src="images/about01.jpg" alt="" class="border1 img3">

      <p class="text color1 upper">
        Lorem ipsum dolor sit am      </p>
      <p class="text">
        adipiscing elit. Nunc suscipit. Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium      </p>
      <a href="http://www.youtube.com/watch?v=1UjEVnmXL0o" rel="prettyPhoto[mixed]" title="YouTube Demo" class="button1">play video</a>    --></div>
    <div class="box2">
    	
	<br/> 
	<br/> 
	  
<!-- This is where the Login form starts -->	
      <h2>Enter Login Credentials</h2>
	
	<br/> 
	
      <div id="note"></div>
             <div style="font: 14px; color: red;">
        <c:out value="${message}"  />
        </div>
            <div id="fields">
              <c:choose>
      <c:when test="${user==null}">
               <form   method="post"  action='loginform#!/page_PARTNERS' name="processLogin">
              <div class="clear"></div>
              
              <input type="text" name="user_name" placeholder="Enter your user name:" />
              <div class="clear"></div>
              
              <input type="password" name="passwd" placeholder="Enter your password:"/>
              <div class="clear"></div>
              
              <div class="clear"></div>
              
              <div class="left">                          
			  <br/>
              <input class="submit" type="submit" name="submit" value="submit"> 
              </div>
             
              <div class="clear"></div>
              </form>
            </div>

      </c:when>

      <c:otherwise>
          <form action='logout#!/page_SPLASH' method="post">
          <input type="submit" value="LOGOUT" />
          </form>
      <br />
      </c:otherwise>
</c:choose>
          </div>
	
	
<!-- Login form ends here -->	
<!--`	`	
      <p class="text color1 upper">
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit.      </p>
      <p class="text">
        Nunc suscipit. Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor ula id ipsum. Ve or ut, risus. Duis pulvinar. Vestibulum vel pede at sapien sstibulum pede. Maecenas sit      </p>
      <p class="text color2">
        Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh  or ut, risus. Duis pulvinar. Vestibulum vel pede at sapien slectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut,      </p>
      <a href="#!/page_MORE" class="button1">more</a>    </div>
	 --> 
    <div class="box3">
	
	
	<div class="box2">
    
    
<!--      
       <h2>News & Events</h2>

      <div class="scroll-pane"><div>
        
        <p class="text color2">
          10.12.2014        </p>
        <p class="text">
          <span class="color1">Lorem ipsum dolor sit amet,</span> consectetuer adipiscing elit. Nunc suscipit. Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus.        </p>

        <br>

        <p class="text color2">
          5.12.2014        </p>
        <p class="text">
          <span class="color1">Duis pulvinar.</span> Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum.        </p>

        <br>

        <p class="text color2">
          3.12.2014        </p>
        <p class="text">
          <span class="color1">Vestibulum pede</span> Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris.        </p>

        <br>

        <p class="text color2">
          10.12.2014        </p>
        <p class="text">
          <span class="color1">Lorem ipsum dolor sit amet,</span> consectetuer adipiscing elit. Nunc suscipit. Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus.        </p>

        <br>

        <p class="text color2">
          5.12.2014        </p>
        <p class="text">
          <span class="color1">Duis pulvinar.</span> Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor aliquet mauris ligula id ipsum.        </p>

        <br>

        <p class="text color2">
          3.12.2014        </p>
        <p class="text">
          <span class="color1">Vestibulum pede</span> Maecenas sit amet augue. Sed blandit lectus eget lectus. Mauris justo. Curabitur nibh lectus, dapibus id, tempor eu, tempor non, erat. Proin pede eros, pharetra ut, viverra sed, egestas nec, mauris.        </p>

       

      </div></div>
 -->
	</div>
    </li>
    <!-- ============ PAGE ABOUT END============= -->

    <!-- ============ PAGE SERVICES ============= -->
    <li id="page_SERVICES">
      <div class="vl1"></div>
      <div class="vl2"></div>
   
   <!--
   <div class="box1">
      
      <h2>services list</h2>

      <div class="scroll-pane"><div>
        
        <p class="text upper color1">
          Ipsum dolor sit amet        </p>
        <p class="text">
          Nunc suscipit. Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices        </p>

        <ul class="ul1">
          <li><a href="#">Ut enim ad minim veniam</a></li>
          <li><a href="#">Euis nostrud exercitation ullamco</a></li>
          <li><a href="#">Laboris nisi ut aliquip ex ea commodo</a></li>
          <li><a href="#">Adipiscing elit. Nunc suscipit.</a></li>
          <li><a href="#">Suspendisse enim arcu, convallis non</a></li>
          <li><a href="#">Ut enim ad minim veniam</a></li>
          <li><a href="#">Euis nostrud exercitation ullamco</a></li>
          <li><a href="#">Laboris nisi ut aliquip ex ea commodo</a></li>
          <li><a href="#">Adipiscing elit. Nunc suscipit.</a></li>
          <li><a href="#">Suspendisse enim arcu, convallis non</a></li>
          <li><a href="#">Ut enim ad minim veniam</a></li>                                                                      
        </ul>




      </div></div>
    </div>
	
	-->
	
    <div class="freeList">
      
      <h2>Free List Module</h2>

      <div class="services1">
      
         <h1>WELCOME TO THE FREE LIST MODULE</h1>
         <form action='freelist#!/page_SERVICES' method="post">
      <input type="submit" value="Get">
        </form>
           <table id = "table">
            <tr><th>DAY/SLOT</th><th>7:00-9:00</th><th>9:00-11:00</th><th>11:00-13:00</th><th>13:00-15:00</th><th>15:00-17:00</th><th>17:00-19:00</th></tr>
            <tr><th>Monday</th>
                     </td>
                     <td>
                   <c:forEach items="${record}" var="records" begin="0" end="0"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                     </td>
                   
                <td><c:forEach items="${record}" var="records" begin="1" end="1"> 
                       <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="2" end="2"> 
                    <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>   
                   
                   </c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="3" end="3"> 
                    <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                    
                </td><td>
                   <c:forEach items="${record}" var="records" begin="4" end="4"> 
                    <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                    
           
                    
                </td><td>
                   <c:forEach items="${record}" var="records" begin="5" end="5"> 
                    <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                    
                </td>
            
            </tr>
                <tr><th>Tuesday</th>
                <td><c:forEach items="${record}" var="records" begin="6" end="6"> 
                   
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                    </c:forEach>
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="7" end="7"> 
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="8" end="8"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="9" end="9"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="10" end="10"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="11" end="11"> 
                    <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
            
            </tr>
                <tr><th>Wednesday</th><td><c:forEach items="${record}" var="records" begin="6" end="6"> 
                   
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                    </c:forEach>
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="7" end="7"> 
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="8" end="8"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="9" end="9"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="10" end="10"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="11" end="11"> 
                    <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
            
            </tr>
                <tr><th>Thursday</th><td><c:forEach items="${record}" var="records" begin="6" end="6"> 
                   
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                    </c:forEach>
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="7" end="7"> 
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="8" end="8"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="9" end="9"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="10" end="10"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="11" end="11"> 
                    <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
            
            </tr>
                <tr><th>Friday</th><td><c:forEach items="${record}" var="records" begin="6" end="6"> 
                   
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                    </c:forEach>
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="7" end="7"> 
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="8" end="8"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="9" end="9"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="10" end="10"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="11" end="11"> 
                    <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
            
            </tr>
                <tr><th>Saturday</th><td><c:forEach items="${record}" var="records" begin="6" end="6"> 
                   
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                    </c:forEach>
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="7" end="7"> 
                     <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="8" end="8"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="9" end="9"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="10" end="10"> 
                      <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach>
                   </c:forEach>
                    
                </td>
                <td>
                   <c:forEach items="${record}" var="records" begin="11" end="11"> 
                    <c:forEach items="${records}" var ="day" begin="0" end="3">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} : " />
                          </c:forEach>
                         
                      </c:forEach> <br/>
                              <c:forEach items="${records}" var ="day" begin="3" end="6">
                          <c:forEach items="${day}" var ="course" > 
                              <c:out value="${course} :" />
                          </c:forEach>
                      </c:forEach></c:forEach>
                    
                </td>
            
            </tr>
       
                
        </table>
       
          
        <div class="table">
          <p class="text upper color1">

         
          
        </div>
        <div class="clear"></div>
      </div>

      <div class="services1">
         
        <div class="clear"></div>
      </div>

      <div class="services1">
        
        <div class="clear"></div>
      </div>
    </div>
    
	<!--
	<div class="box3">
      
      <h2>special services</h2>

      
        
      <p class="text color1 upper">
        Lorem ipsum dolor sit amet      </p>
      <p class="text">
        Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus.      </p>

      <br>

      <p class="text color1 upper">
        Duis pulvinar      </p>
      <p class="text">
        Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus.      </p>

      <br>

      <p class="text color1 upper">
        In pharetra ipsum condimentum elit.      </p>
      <p class="text">
        Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus.      </p>

      


      <a href="#!/page_MORE" class="button1">more</a>    </div>
	  
	  -->
    </li>
    <!-- ============ PAGE SERVICES END============= -->

    <!-- ============ PAGE PROJECTS ============= -->
    <li id="page_PROJECTS">
      <div class="vl1"></div>
      <div class="vl2"></div>

<!-- First Box Starts here	  
	  
    <div class="box1">
      
      <h2>about last projects</h2>

      <img src="images/projects01.jpg" alt="" class="border1 img3">

      <p class="text color1 upper">
        Suspendisse enim arcu convallis non      </p>
      <p class="text">
        Cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit cursus ut ultrices vitae, tempor ut, risus. Duis pulvinar. Vestibulum vel pede at sapien sodales mattis. Quisque pretium, lacus nec iaculis vehicula, arcu libero consectetuer massa, auctor      </p>
      <a href="#!/page_MORE" class="button1">more</a>    </div>
	  
	  First Box Ends -->
	  
    <div class="blockList">
      
      <h2>Block List Module</h2>
                  <div style=" font: bold larger cursive ; color: red;">
        <c:out value="${message}"  />
        </div>

      <div class="scroll-pane"><div>
        
              <div class="gal1" style="font-size: 12px">
         
            
       <h1>Time Table Analyzer!</h1>
        <form method="post" action="block#!/page_PROJECTS">
            Enter The Period <input type="number" name="period" required="true" />
        <br /> 
        <input type="submit" name="sumit" value="fetch" />
        </form>
        <div>
            This Displays for a set period which Teachers are Occupied as seen below
            for a general Timetable of slots and teachers switch to Timetable
            <br />
            Department Members free at this time are
            Teacher Name: <br />
            <c:forEach begin="0" end="4"  items="${natte}" var="nate" > 
                <c:out value="${nate}" /> 
            </c:forEach><br />
            <c:forEach begin="4" end="8"  items="${natte}" var="nate" > 
                <c:out value="${nate}" /> 
            </c:forEach><br />
            <c:forEach begin="8" end="12"  items="${natte}" var="nate" > 
                <c:out value="${nate}" /><br /> 
            </c:forEach>
            
            
            
            <br />
             <table>
                 <tr>
                     
                 </tr>
             </table>
        </div>
        
        
        
        
       



      </div></div>
    </div>
	
	<!--
    <div class="box3">
      
      <h2>projects gallery</h2>

      
        
      <div class="slider1">
        <ul>
          <li><img src="images/slide01.jpg" alt="" class="img"></li>
          <li><img src="images/slide02.jpg" alt="" class="img"></li>
          <li><img src="images/slide03.jpg" alt="" class="img"></li>
          <li><img src="images/slide04.jpg" alt="" class="img"></li>
          <li><img src="images/slide05.jpg" alt="" class="img"></li>                                                                
        </ul>
      </div>
     <!-- <div class="paginations">
        <a href="#" class="prev">prev</a>
        <a href="#" class="next">NEXT</a>      </div>
    </div> 
 -->

 
	</li>
    <!-- ============ PAGE PROJECTS END============= -->

    <!-- ============ PAGE PARTNERS ============= -->
    <li id="page_PARTNERS">
      <div class="vl1"></div>
      <div class="vl2"></div>
	  
    <!-- <div class="box1">
      
      <h2>our partners </h2>

      <div class="partners1">
        <img src="images/partners01.jpg" alt="" class="img">
        <div class="table">
          <p class="text color2">
            companyname          </p>
          <p>
            Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet          </p>
        </div>
        <div class="clear"></div>
      </div>

      <div class="partners1">
        <img src="images/partners02.jpg" alt="" class="img">
        <div class="table">
          <p class="text color2">
            companyname          </p>
          <p>
            Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet          </p>
        </div>
        <div class="clear"></div>
      </div>

      <div class="partners1">
        <img src="images/partners03.jpg" alt="" class="img">
        <div class="table">
          <p class="text color2">
            companyname          </p>
          <p>
            Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet          </p>
        </div>
        <div class="clear"></div>
      </div>
    </div> -->
	
    <div class="individualList">
      
       <h1>Get the Individual list here</h1>
        <div style="">
            
            <form  action='individuall#!/page_PARTNERS' method="post" >
              <input type="submit" name="sumit" value="fetch">
              
            </form>
            
            <div>
                <table id ="table">
                    
                    <tr>
                        <th>DAY/SLOT</th><th>7:00-9:00</th><th>9:00-11:00</th><th>11:00-13:00</th><th>13:00-15:00</th><th>15:00-17:00</th><th>17:00-1900</th>
                        </tr>
                    <tr>
                        <th>MONDAY</th>
                        </tr>
                    
                    <tr>
                        <th>TUESDAY</th>
                        </tr>
                    
                    <tr>
                        <th>WEDNESDAY</th>
                        </tr>
                    
                    <tr>
                        <th>THURSDAY</th>
                        </tr>
                    
                    <tr>
                        <th>FRIDAY</th>
                        </tr>
                    
                    <tr>
                        <th>SATURDAY</th>
                        </tr>
                    
                </table>
                
            </div>
            
            
        </div>

      </div>
    
	<!-- <div class="box3">
      
      <h2>afiliate programs</h2>

      <p class="text color1">
        Consectetuer adipiscing elit.      </p>
      <p class="text">
        Nunc suscipit. Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus.Vestibulum ve      </p>

      <ul class="ul1">
        <li><a href="#">Ut enim ad minim veniam</a></li>
        <li><a href="#">Euis nostrud exercitation ullamco</a></li>
        <li><a href="#">Laboris nisi ut aliquip ex ea commodo</a></li>                                                                    
      </ul>

      <br>

      <p class="text color1">
        Nunc suscipit suspendisse enim      </p>
      <p class="text">
        Nunc suscipit. Suspendisse enim arcu, convallis non, cursus sed, dignissim et, est. Aenean semper aliquet libero. In ante velit, cursus ut, ultrices vitae, tempor ut, risus.Vestibulum ve      </p>
    </div>
	-->
	
    </li>
    <!-- ============ PAGE PARTNERS END============= -->

    <!-- ============ PAGE CONTACTS ============= -->
    <li id="page_CONTACTS">
      <div class="vl1"></div>
      <div class="vl2"></div>
	  
   <!-- <div class="box1">
      
      <h2>postal address</h2>

      <img src="images/contacts01.jpg" alt="" class="border1 img3">

      <p class="text color1 upper">
        Lorem ipsum dolor sit amet      </p>

      <br>

      <p class="text color1 upper">
        Contact Address      </p>
      <p class="text">
        8901 MINNESOTA, BEMIDJI,<br />
1221 BIRCHMONT DRIVE NORTHEAST.<br />
<br />
TELEPHONE:+1(234) 567 8910<br />
FAX:+1 800 889 9898<br />
E-MAIL:MAIL@COMPANYNAME.COM</p>
    </div> -->
	
    <div class="timetable">
   
      <h2>TIME TABLE BEING ANALYZED</h2>
      </div>
      <br />
      <br />
      <br />
        <table id ="table">
                    <tr>
                        <th>DAY/SLOT</th><th>7:00-9:00</th><th>9:00-11:00</th><th>11:00-13:00</th><th>13:00-15:00</th><th>15:00-17:00</th><th>17:00-1900</th>
                        </tr>
                    <tr>
                        <th>MONDAY</th><td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="0" end="0">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        
                        
                        <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="1" end="1">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                         <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="2" end="2">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                       <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="3" end="3">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="4" end="4">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="5" end="5">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                    </tr>
                    
                    <tr>
                        <th>TUESDAY</th><td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="6" end="6">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        
                        
                        <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="7" end="7">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                         <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="8" end="8">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                       <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="9" end="9">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="10" end="10">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="11" end="11">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        </tr>
                    
                    <tr>
                        <th>WEDNESDAY</th><td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="12" end="12">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        
                        
                        <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="13" end="13">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                         <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="14" end="14">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                       <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="15" end="15">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="16" end="16">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="17" end="17">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        </tr>
                    
                    <tr>
                        <th>THURSDAY</th><td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="18" end="18">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        
                        
                        <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="19" end="19">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                         <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="20" end="20">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                       <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="21" end="21">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="22" end="22">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="23" end="23">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        </tr>
                    
                    <tr>
                        <th>FRIDAY</th><td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="24" end="24">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        
                        
                        <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="25" end="25">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                         <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="26" end="26">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                       <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="27" end="27">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="28" end="28">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="29" end="29">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        </tr>
                    
                    <tr>
                        <th>SATURDAY</th><td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="30" end="30">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        
                        
                        <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="31" end="31">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                         <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="32" end="32">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                       <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="0" end="0">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="33" end="33">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="5" end="5">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="34" end="34">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                          <td>
                            <c:forEach items="${CoursDays}" var="CoursesPerDay" begin="5" end="5">
                                <c:forEach items="${CoursesPerDay}" var ="CoursesPerSlot" begin="35" end="35">
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="0" end="3">
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/> <c:out value="|"/>
                                                </c:forEach>
                                                
                                        </c:forEach><br />
                                        <c:forEach items="${CoursesPerSlot}" var ="Courses" begin="4" >
                                                <c:forEach items="${Courses}" var ="Course" >
                                                        <c:out value="${Course}"/>
                                                </c:forEach>
                                                
                                        </c:forEach>
                                </c:forEach>
                            </c:forEach></td>
                        </tr>
                    
                </table>
   
      <div id="button">
          <form method="post" action="generator#!/page_CONTACTS">
          <input type="submit" value="generate" />
          </form>
      
              
    <!--  <div id="note"></div>
            <div id="fields">
            <form id="ajax-contact-form" action="javascript:alert('success!');">
              <div class="clear"></div>
              
              <INPUT type="text" name="name" value="Your full name:" onBlur="if(this.value=='') this.value='Your full name:'" 
                        onFocus="if(this.value =='Your full name:' ) this.value=''">
              <div class="clear"></div>
              
              <INPUT type="text" name="email" value="Your email:" onBlur="if(this.value=='') this.value='Your email:'" 
                        onFocus="if(this.value =='Your email:' ) this.value=''">
              <div class="clear"></div>
              
              <INPUT type="text" name="phone" value="Phone number:" onBlur="if(this.value=='') this.value='Phone number:'" 
                        onFocus="if(this.value =='Phone number:' ) this.value=''">
              <div class="clear"></div>
              
              <TEXTAREA NAME="content" onBlur="if(this.value=='') this.value='Message:'" 
                        onFocus="if(this.value =='Message:' ) this.value=''">Message:</TEXTAREA>
              <div class="clear"></div>
              
              <div class="left">                          
              <INPUT class="submit" type="submit" name="submit" value="submit">
              </div>
             
              <div class="clear"></div>
              </form>
            </div>
    </div> -->
    
<!--	<div class="box3">
      
      <h2>useful links</h2>

      <figure class="google_map"></figure>
    </div>
	-->
    </li>
    <!-- ============ PAGE CONTACTS END============= -->

    <!-- ============ PAGE PRIVACY ============= -->
    <li id="page_PRIVACY">
    <div class="box4">

      <h2>Privacy Policy</h2>

      <div class="scroll-pane"><div>
        
        <p class="text upper color1">
          Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla mollis justo et ante. Vestibulum ultrices. Maecenas ullamcorper eleifend arcu. Sed a dui sed diam ornare pretium. Nam varius, ipsum ac bibendum dictum, ligula ante scelerisque libero, eget ultricies libero diam at mauris. Phasellus quis mi. Suspendisse mollis facilisis leo. Nullam quam tellus, varius ut, adipiscing in, tristique et, enim. Aliquam lobortis.        </p>
        <p class="text">
          Nulla pharetra dignissim enim. Nam cursus eros ut massa. Proin rutrum. Donec non urna non leo aliquam cursus. Vivamus ornare viverra lacus. Fusce id sapien. Donec rhoncus, enim sit amet sodales elementum, elit odio sagittis erat, at tincidunt leo neque non pede. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris ac leo. Aliquam magna nibh, tincidunt ut, lobortis feugiat, consectetuer sed, sapien. Aenean dui eros, tempus non, pulvinar in, vestibulum sed, urna. Nullam eget arcu a pede adipiscing vestibulum. Donec accumsan lacus nec dolor. Etiam porttitor elit. Quisque suscipit, arcu id porttitor vehicula, sem eros congue nulla, id consequat massa diam at dui. Quisque quis massa. Suspendisse metus justo, pellentesque et, sagittis sit amet, consectetuer imperdiet, sapien. Nullam eu neque eget risus porttitor accumsan. Vivamus cursus pretium tortor.        </p>
        <p class="text">
          Nulla pharetra dignissim enim. Nam cursus eros ut massa. Proin rutrum. Donec non urna non leo aliquam cursus. Vivamus ornare viverra lacus. Fusce id sapien. Donec rhoncus, enim sit amet sodales elementum, elit odio sagittis erat, at tincidunt leo neque non pede. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris ac leo. Aliquam magna nibh, tincidunt ut, lobortis feugiat, consectetuer sed, sapien. Aenean dui eros, tempus non, pulvinar in, vestibulum sed, urna. Nullam eget arcu a pede adipiscing vestibulum. Donec accumsan lacus nec dolor. Etiam porttitor elit. Quisque suscipit, arcu id porttitor vehicula, sem eros congue nulla, id consequat massa diam at dui. Quisque quis massa. Suspendisse metus justo, pellentesque et, sagittis sit amet, consectetuer imperdiet, sapien. Nullam eu neque eget risus porttitor accumsan. Vivamus cursus pretium tortor.        </p>
        <p class="text">
          Nulla pharetra dignissim enim. Nam cursus eros ut massa. Proin rutrum. Donec non urna non leo aliquam cursus. Vivamus ornare viverra lacus. Fusce id sapien. Donec rhoncus, enim sit amet sodales elementum, elit odio sagittis erat, at tincidunt leo neque non pede. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris ac leo. Aliquam magna nibh, tincidunt ut, lobortis feugiat, consectetuer sed, sapien. Aenean dui eros, tempus non, pulvinar in, vestibulum sed, urna. Nullam eget arcu a pede adipiscing vestibulum. Donec accumsan lacus nec dolor. Etiam porttitor elit. Quisque suscipit, arcu id porttitor vehicula, sem eros congue nulla, id consequat massa diam at dui. Quisque quis massa. Suspendisse metus justo, pellentesque et, sagittis sit amet, consectetuer imperdiet, sapien. Nullam eu neque eget risus porttitor accumsan. Vivamus cursus pretium tortor.        </p>

        


      </div></div>
    </div>
    </li>
    <!-- ============ PAGE PRIVACY END============= -->    
    
    
    <!-- ============ PAGE MORE ============= -->
    <li id="page_MORE">
    <div class="box4">

      <h2>More</h2>

      <div class="scroll-pane"><div>
        
        <p class="text upper color1">
          Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla mollis justo et ante. Vestibulum ultrices. Maecenas ullamcorper eleifend arcu. Sed a dui sed diam ornare pretium. Nam varius, ipsum ac bibendum dictum, ligula ante scelerisque libero, eget ultricies libero diam at mauris. Phasellus quis mi. Suspendisse mollis facilisis leo. Nullam quam tellus, varius ut, adipiscing in, tristique et, enim. Aliquam lobortis.        </p>
        <p class="text">
          Nulla pharetra dignissim enim. Nam cursus eros ut massa. Proin rutrum. Donec non urna non leo aliquam cursus. Vivamus ornare viverra lacus. Fusce id sapien. Donec rhoncus, enim sit amet sodales elementum, elit odio sagittis erat, at tincidunt leo neque non pede. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris ac leo. Aliquam magna nibh, tincidunt ut, lobortis feugiat, consectetuer sed, sapien. Aenean dui eros, tempus non, pulvinar in, vestibulum sed, urna. Nullam eget arcu a pede adipiscing vestibulum. Donec accumsan lacus nec dolor. Etiam porttitor elit. Quisque suscipit, arcu id porttitor vehicula, sem eros congue nulla, id consequat massa diam at dui. Quisque quis massa. Suspendisse metus justo, pellentesque et, sagittis sit amet, consectetuer imperdiet, sapien. Nullam eu neque eget risus porttitor accumsan. Vivamus cursus pretium tortor.        </p>
        <p class="text">
          Nulla pharetra dignissim enim. Nam cursus eros ut massa. Proin rutrum. Donec non urna non leo aliquam cursus. Vivamus ornare viverra lacus. Fusce id sapien. Donec rhoncus, enim sit amet sodales elementum, elit odio sagittis erat, at tincidunt leo neque non pede. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris ac leo. Aliquam magna nibh, tincidunt ut, lobortis feugiat, consectetuer sed, sapien. Aenean dui eros, tempus non, pulvinar in, vestibulum sed, urna. Nullam eget arcu a pede adipiscing vestibulum. Donec accumsan lacus nec dolor. Etiam porttitor elit. Quisque suscipit, arcu id porttitor vehicula, sem eros congue nulla, id consequat massa diam at dui. Quisque quis massa. Suspendisse metus justo, pellentesque et, sagittis sit amet, consectetuer imperdiet, sapien. Nullam eu neque eget risus porttitor accumsan. Vivamus cursus pretium tortor.        </p>
        <p class="text">
          Nulla pharetra dignissim enim. Nam cursus eros ut massa. Proin rutrum. Donec non urna non leo aliquam cursus. Vivamus ornare viverra lacus. Fusce id sapien. Donec rhoncus, enim sit amet sodales elementum, elit odio sagittis erat, at tincidunt leo neque non pede. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris ac leo. Aliquam magna nibh, tincidunt ut, lobortis feugiat, consectetuer sed, sapien. Aenean dui eros, tempus non, pulvinar in, vestibulum sed, urna. Nullam eget arcu a pede adipiscing vestibulum. Donec accumsan lacus nec dolor. Etiam porttitor elit. Quisque suscipit, arcu id porttitor vehicula, sem eros congue nulla, id consequat massa diam at dui. Quisque quis massa. Suspendisse metus justo, pellentesque et, sagittis sit amet, consectetuer imperdiet, sapien. Nullam eu neque eget risus porttitor accumsan. Vivamus cursus pretium tortor.        </p>

        


      </div></div>
    </div>
    </li>
    <!-- ============ PAGE MORE END============= -->


  </ul>
</article>
<!--content end -->

</div>

<footer>

<div class="copyright">Copyright (c) 2015. All rights reserved.</div>

<div class="tola">
   </div>
<a href="#!/page_PRIVACY" class="privacy">Privacy policy</a>

</footer>
</div>
<script type="text/javascript" src="js/main.js"></script>

</body>
</html>
