<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.sql.*" %> 

<!DOCTYPE HTML>
<html>
  <head>
     <meta charset="utf-8">
    <title>한끼 해유</title>
    <link href="page2.css" type="text/css" rel="stylesheet">
  </head>
  
  <body>
        <jsp:include page="top.jsp" flush="false"/>
     


<div class="bigBox">
   
   <div class="box">
      <form action="page3.jsp" method="post">
      <p class="text">1000원</p>
      <input type="image" src="1.jpg" alt="Submit"  width=100% height="400px">
      <input type="hidden" name="i" value="1000" >
   </form>
   </div>
   
   
   <div class="box">
      <form action="page3.jsp" method="post">
      <p class="text">2000원</p>
      <input type="image" src="2.jpg" alt="Submit" width=100% height="400px">
      <input type="hidden" name="i" value="2000">
   </form>
   </div>
   
   
   <div class="box">
      <form action="page3.jsp" method="post">
      <p class="text">3000원</p>
      <input type="image" src="3.jpg" alt="Submit" width=100% height="400px">
      <input type="hidden" name="i" value="3000">
   </form>
   </div>
   
</div>

<div class="bigBox">
   
   <div class="box">
      <form action="page3.jsp" method="post">
      <p class="text">4000원</p>
      <input type="image" src="4.jpg" alt="Submit" width=100% height="400px">
      <input type="hidden" name="i" value="4000">
   </form>
   </div>
      

   <div class="box">
      <form action="page3.jsp" method="post">
      <p class="text">5000원</p>
      <input type="image" src="5.jpg" alt="Submit" width=100% height="400px">
      <input type="hidden" name="i" value="5000">
   </form>
   </div>
   
   
   <div class="box">
      <form action="page3.jsp" method="post">
      <p class="text">5000원 이상</p>
      <input type="image" src="6.gif" alt="Submit" width=100% height="400px">
      <input type="hidden" name="i" value="6000">
   </form>
   </div>
   
</div>



<table>
<tr><td>2019@이지우 김동현 정상현</td></tr>
</table>
  </body>
</html>