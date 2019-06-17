<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ page import = "java.sql.*" %> 

<!DOCTYPE html>
<html>
	
	<head>
		<link rel="stylesheet" type="text/css" href="page4.css">
		<title>한끼 해유</title>
		<meta name="author" content="Your name here!" />

		<meta charset="utf-8" />
		<meta name="description"
		 content="IAB 6064 homework assignment focusing on Cascading Style Sheets for layout." />
	</head>

	<body>

		   <jsp:include page="top.jsp" flush="false"/>
	
	<%
Connection conn = null;                                        
PreparedStatement pstmt = null;
ResultSet rs= null;
PreparedStatement pstmt1 = null;
ResultSet rs1= null;


Class.forName("com.mysql.jdbc.Driver"); 

try{
String url = "jdbc:mysql://localhost:3306/project";   
String id = "root";                           
String pw = "dlwldn123";                                                

                   
conn=DriverManager.getConnection(url,id,pw);         
System.out.println(conn + "<-- conn m_list.jsp");


pstmt = conn.prepareStatement("SELECT * FROM recipesimple");

rs = pstmt.executeQuery();

while(rs.next()){
	String sCode=rs.getString("sCode");
	if(sCode.equals(request.getParameter("fcode"))){
	String sImg=rs.getString("sImg");
	String sName=rs.getString("sName");
	out.println("<center><img src=\""+ sImg + "\" alt=\""+sName+"\" width=\"750\" height=\"450\"></center>");
	out.println("<center><b>" + "<"  +sName+ ">" + "</b></br></center>");
	
	out.println("<div class=\"foodvideo\">");
	out.println("</div>");
	out.println("</br></br></br></br>");
	out.println("<div class=\"bottomdsn\">");
	out.println("<div class=\"ingredient\">");

	}
}
pstmt = null;
rs= null;


pstmt = conn.prepareStatement("SELECT * FROM recipematerial");
pstmt1 = conn.prepareStatement("SELECT * FROM recipeprocess");

rs = pstmt.executeQuery();
rs1=pstmt1.executeQuery();
out.println("</br></br>");

while(rs.next()){
	String mCode=rs.getString("mCode");
	if(mCode.equals(request.getParameter("fcode"))){
		String mName=rs.getString("mName");
		String mType=rs.getString("mType");
		String mCapac=rs.getString("mCapac");
		%>
		<form action="foodpop.jsp" id="foodpop">
		재료:<a href="http://localhost:8080/project/foodpop.jsp?mtname=<%=mName %>" onclick="window.open(this.href, 'width=400, height=430'); return false;">
		<%=mName %></a>, 분류: <%=mType %>, 용량: <%=mCapac %>
		<input type="hidden" name="mtname" value="<%=mName %>">
		</form>
		</br></br>
		<%
	}
}
%>

	</div>
	<div class="cookrecipe">
	
<%
while(rs1.next()){
	String pCode=rs1.getString("pCode");
	if(pCode.equals(request.getParameter("fcode"))){
	String pOrder=rs1.getString("pOrder");
	String pProc=rs1.getString("pProc");
	String pImg=rs1.getString("pImg");
	String pTip=rs1.getString("pTip");
	
	
	out.println("<div>" + "<img src=\""+ pImg + "\" width=\"300\" height=\"185\">" + "</br>" + "</div>");
	out.println("<div>" + pOrder+"<b>단계: </b>"+pProc + "</br>" + "</div>");
	out.println("<div>" + "<b>조리 팁: </b>"+pTip + "</div>" + "</br></br>");
	}
}
%>
	</div>
	</div>
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