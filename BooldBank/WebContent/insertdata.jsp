<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
    <%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
}
%>
<%
if(request.getParameter("submit")!=null)
{
	String name=request.getParameter("name");
	String bloodgp=request.getParameter("bloodgp");
	String addares=request.getParameter("addares");
	String pno=request.getParameter("pno");
	String email=request.getParameter("email");
	
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		

		String url="jdbc:mysql://localhost:3306/bdata";
		String dbname="root";
		String dbpass="";
		con=DriverManager.getConnection(url,dbname,dbpass);
		pst=con.prepareStatement("insert into bdata.btable(name,bloodgp,addares,pno,email)values(?,?,?,?,?)");
		pst.setString(1, name);
		pst.setString(2, bloodgp);
		pst.setString(3, addares);
		pst.setString(4, pno);
		pst.setString(5, email);
		pst.executeUpdate();
		System.out.println("recourd added");
		response.sendRedirect("dashbord.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/insertstyle.css"%></style>
<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" id="navid">
  <div class="container-fluid"id="navid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" id="naid1" href="dashbord.jsp">Admin dashboard</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="ulcolor">
      <ul class="nav navbar-nav"id=ulid1>
        <li><a href="dashbord.jsp" id="naid2"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard <span class="sr-only">(current)</span></a></li>
        
        <li><a href="dashbord.jsp" id="naid3"><i class="fa fa-users" aria-hidden="true"></i>
 Profile</a></li>
        <li><a href="aboutus.jsp" id="naid4"><i class="fa fa-question-circle" aria-hidden="true"></i>
 About us</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="insertdata.jsp"id="naid5"><i class="fa fa-user-plus" aria-hidden="true"></i>
 Add Users</a></li>
        <li><a href="login.jsp" id="naid6"><i class="fa fa-sign-out" aria-hidden="true"></i>

 Logout</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Registration Form</h2>
                    <form method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">name</label>
                                    <input class="input--style-4" type="text" name="name">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">bloodgp</label>
                                    <input class="input--style-4" type="text" name="bloodgp">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">Addares</label>
                                    <input class="input--style-4" type="text" name="addares">
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">pno</label>
                                    <input class="input--style-4" type="text" name="pno">
                                </div>
                            </div>
                            

                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label1">email</label>
                                    <input class="input--style-4" type="email" name="email">
                                </div>
                            </div>
                        </div>
                        
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue btn-lg"  name="submit" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    
    
     <div class="col-md-12">
	<div class="panel-body">
	<table id="tb1-student" class="table table-responsive table-bordered">
	<thead>
	<tr>
		<th>name</th>
		<th>bloodgp</th>
		<th>Addares</th>
		<th>Pno</th>
		<th>email</th>
		</tr>
		<% 
		 	String url="jdbc:mysql://localhost:3306/bdata";
			String dbname="root";
			String dbpass="";
			ResultSet rs;
			String query="select * from bdata.btable";
			    Class.forName("com.mysql.jdbc.Driver").newInstance(); ;
			   Connection con=DriverManager.getConnection(url,dbname,dbpass);
			   Statement sta=con.createStatement();
			   rs=sta.executeQuery(query);
			   while(rs.next())
			   {
				   int id=rs.getInt("id");
				   
		%>
		<tr>		
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("bloodgp") %></td>
		<td><%=rs.getString("addares") %></td>
		<td><%=rs.getString("pno") %></td>
		<td><%=rs.getString("email") %></td>
		</tr>
		<%
			   }
		
		%>
		
		
	</table>
	</div>
	</div>    
</body>
</html>