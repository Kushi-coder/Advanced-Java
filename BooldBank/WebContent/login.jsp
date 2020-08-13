<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style><%@include file="/loginstyle.css"%></style>
<body>
<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Login </h5>
            <form class="form-signin" action="login" method="get">
              <div class="form-group">
               
                        <label for="exampleInputEmail1">Username</label>
                        <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Username" name="Username">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your Username with anyone else.</small>
                      </div>

               <div class="form-group">
                        <label for="exampleInputEmail1">Password</label>
                        <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Username" name="password">
                        
                      </div>
              <button class="btn btn-lg btn-success btn-block text-uppercase" name="sumbit" type="submit">Sign in</button>
              
            </form>
            </div>
        </div>
      </div>
    </div>
  </div>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>