<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ page import = "java.sql.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재료 판매정보</title>
</head>
<body>
<center><h1>재료 판매정보</h1></center>

<style>
  table {
    width: 100%;
    border: 1px solid #444444;
  }
  th, td {
    border: 1px solid #444444;
  }
</style>
	<%
Connection conn = null;                                        
PreparedStatement pstmt = null;
ResultSet rs= null;



Class.forName("com.mysql.jdbc.Driver"); 

try{
String url = "jdbc:mysql://localhost:3306/project";   
String id = "root";                           
String pw = "dlwldn123";                                                

                   
conn=DriverManager.getConnection(url,id,pw);         
System.out.println(conn + "<-- conn m_list.jsp");


pstmt = conn.prepareStatement("SELECT * FROM pricedata");

rs = pstmt.executeQuery();
%>
<c:set var="cnt" value= "0" />
<table>
<tr>
<th>제품명</th>
<th>제조사</th>
<th>가격</th>
</tr>
<% 
while(rs.next()){
	String pdName=rs.getString("pdName");
	String pdFact=rs.getString("pdFact");
	String pdPrice=rs.getString("pdPrice");
	String txtchk=request.getParameter("mtname");
	%>	
	<c:set var="ex1" value= "<%= pdName %>" />
	<c:set var="ex2" value= "<%= txtchk %>" />
	<c:set var="ex3" value= "<%= pdFact %>" />
	<c:set var="ex5" value= "<%= pdPrice %>" />
	
	<c:set var="ex4" value="${fn:contains(ex1,ex2)}"/>

	
	<c:if test="${ex4==true}">
	<tr>
	<c:set var="cnt" value="${cnt+1}"/>
	<td><c:out value="${ex1}"/></td>
	<td><c:out value="${ex3}"/></td>
	<td><c:out value="${ex5}원"/></td>
	</tr>
	</c:if>
	
	
<%
}	
%>
	</table>
	<c:if test="${cnt == 0 }">
	<c:out value="해당 재료의 판매 정보가 없습니다."/>
	</c:if>
<%
} catch (SQLException ex) {
    out.println(ex.getMessage());
    ex.printStackTrace();
} finally {

    if (rs != null)
        try {
            rs.close();
        } catch (SQLException ex) {
        }
    if (pstmt != null)
        try {
            pstmt.close();
        } catch (SQLException ex) {
        }

    if (conn != null)
        try {
            conn.close();
        } catch (SQLException ex) {
        }
}
%>
</body>
</html>