<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Web Page Theme 1-3-1 Columns</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="<c:url value="/resources/images/profpic.jpg" />">

	<spring:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css" var="bootstrapCSS" /> 
	<spring:url value="/webjars/bootstrap/3.4.1/css/bootstrap-theme.min.css" var="bootstrapCSStheme" /> 
	<spring:url value="/webjars/jquery/3.4.1/jquery.min.js" var="jQueryJS" />
	<spring:url value="/webjars/bootstrap/3.4.1/js/bootstrap.min.js" var="bootstrapJS" />
	
	<link href="${bootstrapCSS}" rel="stylesheet" /> 
	<link href="${bootstrapCSStheme}" rel="stylesheet" />
	<script src="${jQueryJS}"></script>
	<script src="${bootstrapJS}"></script>

	<style>
		/* Remove the navbar's default margin-bottom and rounded borders */ 
		.navbar {
		  margin-bottom: 0;
		  border-radius: 0;
		}
		
		/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
		.row.content {height: 450px}
		
		/* Set gray background color and 100% height */
		.sidenav {
		  padding-top: 20px;
		  background-color: #f1f1f1;
		  height: 100%;
		}
		
		/* Set black background color, white text and some padding */
		footer {
		  background-color: #0d5640;
		  color: white;
		  padding: 15px;
		}
		
		/* On small screens, set height to 'auto' for sidenav and grid */
		@media screen and (max-width: 767px) {
		  .sidenav {
			height: auto;
			padding: 15px;
		  }
		  .row.content {height:auto;} 
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid" style="background-color: #0d5640;">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>                        
		  </button>
		  <a class="navbar-brand" href="#"><img src="<c:url value="/resources/images/profpic.jpg" />" width="110" height="50" /></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
		  <ul class="nav navbar-nav">
			<li class="active"><a href="#">HOME</a></li>
			<li><a href="#">ABOUT</a></li>
			<li><a href="#">PRODUCTS</a></li>
			<li><a href="#">SERVICES</a></li>
			<li><a href="#">CUSTOMERS</a></li>
			<li><a href="#">CONTACT</a></li>
		  </ul>
		  <ul class="nav navbar-nav navbar-right mr-auto">
			<li><br/><input type="text" name="search" value="" placeholder="Search ...">&nbsp;<span class="glyphicon glyphicon-search" style="color:white"></span></li>
			<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		  </ul> 
		</div>
	  </div>
	</nav>

	<div class="container-fluid text-center">
	  <div class="row content">
		<div class="col-sm-2 sidenav" style="height: 100%; background-image: url('images/bg-color-cecdb9.png')">
		  <p><a href="images/themepic.png"><img src="<c:url value="/resources/images/themepic.PNG" />" width="170" height="60" /></a></p>
		  <div style="height: 2px;"></div>
		  <p><a href="#">Link 1</a></p>
		  <p><a href="#">Link 2</a></p>
		  <p><a href="#">Link 3</a></p>
		  <p><a href="#">Link 4</a></p>
		  <p><a href="#">Link 5</a></p>		  
		</div>
		<div class="col-sm-8 text-left" style="height: 100%; background-color: #c5d9f9; "> 
		  <h1>Welcome</h1>
		  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		  <hr>
		  <h3>Test</h3>
		  <p>Lorem ipsum...</p>
		  <hr>
		  <h3>Test</h3>
		  <p>Lorem ipsum...</p>
		  <hr>
		  <h3>Test</h3>
		  <p>Lorem ipsum...</p> 
		</div>
		<div class="col-sm-2 sidenav" style="background-image: url('<c:url value="/resources/images/bg-color-cecdb9.png" />')">
		  <div class="well">
			<p>ADS 1</p>
		  </div>
		  <div class="well">
			<p>ADS 2</p>
		  </div>
		  <div class="well">
			<p>ADS 3</p>
		  </div>
		  <div class="well">
			<p>ADS 4</p>
		  </div>
		  <div class="well">
			<p>ADS 5</p>
		  </div>
		</div>

	  </div>
	</div>
	<footer class="container-fluid text-center">
		<ul class="list-unstyled list-inline">		
			<li class="list-inline-item"><a href="https://in.linkedin.com/in/rahamathullah-s-18a12816"><img src="<c:url value="/resources/images/linkedin.png" />" width="32" height="30" /></a></li>
			<li class="list-inline-item"><a href="https://twitter.com/Rahamat87523498"><img src="<c:url value="/resources/images/twitter.png" />" width="32" height="30" /></a></li>
			<li class="list-inline-item"><a href="https://github.com/rahamath18"><img src="<c:url value="/resources/images/github.png" />" width="32" height="30" /></a></li>
			<li class="list-inline-item"><a href="https://play.google.com/store/apps/developer?id=Rahamathullah+S"><img src="<c:url value="/resources/images/google-play.png" />" width="32" height="30" /></a></li>
		</ul>
		<p>Copyright © 2003-2019 rahamaths.appspot.com, all rights reserved.</p>    
	</footer>
</body>
</html> 