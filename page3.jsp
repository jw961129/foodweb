<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="keywords" content="">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="project3.js" type="text/javascript"></script>
    <script language = "javascript"></script>
<style>
.container{
   width: 100%;
   height: 100%;
   display : flex;
   flex-flow : row;
}
div{
   width: 31%;
   height: 300px;
      margin : 1% 1%;
   float: left;
   background-color:#eeeeee;
}

div:hover{
box-shadow: 0px 0px 4px 4px #111111;
}

h1{
margin-bottom: 50px;
}



p{
text-align: center;
}
p.name{
color: black;
font-size: 25px;
}
table{

    margin-top:6em;
    height:6em;
    width:100%;
    text-align:center;
    font-weight:bold;
    font-style:italic;
}

</style>
<title>한끼해유</title>
</head>
<body>
   <jsp:include page="top.jsp" flush="false"/>

<%
Class.forName("com.mysql.jdbc.Driver"); 

   String url = "jdbc:mysql://localhost:3306/project";   
   String id = "root";                           
   String pw = "dlwldn123";                                                

    try{       
      Connection conn = DriverManager.getConnection(url,id,pw);    
         Statement stmt = conn.createStatement();


         ResultSet rs = null;
         String i =  request.getParameter("i");
            
   if("1000".equals(i)){

   
   String listSql = "SELECT * FROM recipesimple where sPpa='1000';"; 
    rs = stmt.executeQuery(listSql);
    %>
    
    <%
    if(!rs.next()){
    	out.println("요청하신 자료가 없습니다.");
    }
    else{
     while(rs.next()) {

String sCode = rs.getString("sCode");
String sName = rs.getString("sName");
String sPrice = rs.getString("sPrice");
String sImg = rs.getString("sImg");
String sPpa = rs.getString("sPpa");

%>


<div id="item">

<p class="name"><%=sName%>&nbsp;<%=sPpa %>원</p>
<form action="page4.jsp" name="food" method="post">
<input type="image" src="<%=sImg %>" alt="Submit"  width=100% height="215px">
<input type="hidden" name="fcode" value="<%=sCode%>">
</form>
</div>

<%
     }}}%>
     
<%    
if("2000".equals(i)){

   
   String listSql = "SELECT * FROM recipesimple where sPpa='2000';"; // 요기서 앞에내용에서 전달받은내용을 바탕으로 표현
    rs = stmt.executeQuery(listSql);
      %>
      
      <%
      if(!rs.next()){
      	out.println("요청하신 자료가 없습니다.");
      }
      else{
       while(rs.next()) {
      
String sCode = rs.getString("sCode");
String sName = rs.getString("sName");
String sPrice = rs.getString("sPrice");
String sImg = rs.getString("sImg");
String sPpa = rs.getString("sPpa");

%>


<div id="item">
<p class="name"><%=sName%>&nbsp;<%=sPpa %>원</p>
<form action="page4.jsp" name="food" method="post">
<input type="image" src="<%=sImg %>" alt="Submit"  width=100% height="215px">
<input type="hidden" name="fcode" value="<%=sCode%>">
</form>


</div>




<%
       }}}%>
      
<%    
   if("3000".equals(i)){

   
   String listSql= "SELECT * FROM recipesimple where sPpa='3000';"; // 요기서 앞에내용에서 전달받은내용을 바탕으로 표현
    rs = stmt.executeQuery(listSql);
    %>

    <%
    if(!rs.next()){
    	out.println("요청하신 자료가 없습니다.");
    }
    else{
     while(rs.next()) {
    
String sCode = rs.getString("sCode");
String sName = rs.getString("sName");
String sPrice = rs.getString("sPrice");
String sImg = rs.getString("sImg");
String sPpa = rs.getString("sPpa");

%>


<div id="item">
<p class="name"><%=sName%>&nbsp;<%=sPpa %>원</p>
<form action="page4.jsp" name="food" method="post">
<input type="image" src="<%=sImg %>" alt="Submit"  width=100% height="215px">
<input type="hidden" name="fcode" value="<%=sCode %>">
</form>


</div>




<%
     }}}%>
   
<%    
   if("4000".equals(i)){

   
   String listSql = "SELECT * FROM recipesimple where sPpa='4000';"; // 요기서 앞에내용에서 전달받은내용을 바탕으로 표현
    rs = stmt.executeQuery(listSql);
    %>
 
    <%

    if(!rs.next()){
    	out.println("요청하신 자료가 없습니다.");
    }
    else{
     while(rs.next()) {
   

String sCode = rs.getString("sCode");
String sName = rs.getString("sName");
String sPrice = rs.getString("sPrice");
String sImg = rs.getString("sImg");
String sPpa = rs.getString("sPpa");

%>

<div id="item">
<p class="name"><%=sName%>&nbsp;<%=sPpa %>원</p>
<form action="page4.jsp" name="food" method="post">
<input type="image" src="<%=sImg %>" alt="Submit"  width=100% height="215px">
<input type="hidden" name="fcode" value="<%=sCode %>">
</form>


</div>




<%
     }}}%>
     
<%    
   if("5000".equals(i)){

   
   String listSql = "SELECT * FROM recipesimple where sPpa='5000';"; // 요기서 앞에내용에서 전달받은내용을 바탕으로 표현
    rs = stmt.executeQuery(listSql);
    %>
   
    <%
    if(!rs.next()){
    	out.println("요청하신 자료가 없습니다.");
    }
    else{
     while(rs.next()) {
    
String sCode = rs.getString("sCode");
String sName = rs.getString("sName");
String sPrice = rs.getString("sPrice");
String sImg = rs.getString("sImg");
String sPpa = rs.getString("sPpa");

%>


<div id="item">
<p class="name"><%=sName%>&nbsp;<%=sPpa %>원</p>
<form action="page4.jsp" name="food" method="post">
<input type="image" src="<%=sImg %>" alt="Submit"  width=100% height="215px">
<input type="hidden" name="fcode" value="<%=sCode %>">
</form>



</div>



<%
     }}}%>
     
<%    
   if("6000".equals(i)){

   
   String listSql = "SELECT * FROM recipesimple where sPpa='10000';"; // 요기서 앞에내용에서 전달받은내용을 바탕으로 표현
    rs = stmt.executeQuery(listSql);
     %>
      
      <%
      if(!rs.next()){
      	out.println("요청하신 자료가 없습니다.");
      }
      else{
       while(rs.next()) {
      
String sCode = rs.getString("sCode");
String sName = rs.getString("sName");
String sPrice = rs.getString("sPrice");
String sImg = rs.getString("sImg");
String sPpa = rs.getString("sPpa");

%>


<div id="item">
<p class="name"><%=sName%>&nbsp;<%=sPpa %>원</p>
<form action="page4.jsp" name="food" method="post">
<input type="image" src="<%=sImg %>" alt="Submit"  width=100% height="215px">
<input type="hidden" name="fcode" value="<%=sCode %>">
</form>


</div>




<%
       }}}%>
      

    
<%
   
    rs.close();

    conn.close();

    stmt.close();
    
 
    }catch(SQLException e){

    out.println(e.toString());

  }

  %>

<table>

<tr><td>2019@이지우 김동현 정상현</td></tr>
</table>
</body>
</html>