<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%

	String id=request.getParameter("id");
	
	
	
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		

		String url="jdbc:mysql://localhost:3306/bdata";
		String dbname="root";
		String dbpass="";
		con=DriverManager.getConnection(url,dbname,dbpass);
		pst=con.prepareStatement("delete  from bdata.btable where id=?");
		
		pst.setString(1, id);
		pst.executeUpdate();
		System.out.println("deleted added");
		
		%>
		<script>
		
		alert("Recourd deleted");
		</script>