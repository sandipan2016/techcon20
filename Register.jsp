<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
    <style  type = "text/css">
      #ex2 
      {
        background-color:chocolate;
        font:chartreuse ;
        
      }
    </style>
<script type = "text/javascript">
function validate()
{

  var a = /^[0-9]+$/;
  var b = /^[a-zA-Z0-9]+$/;
  var c = /^[a-zA-Z]+$/;


var fname = document.forms.custreg.fname.value;
var lname = document.forms.custreg.lname.value;
var phon = document.forms.custreg.phone.value;
var email = document.forms.custreg.email.value;
var logn = document.forms.custreg.logname.value; 
var pass = document.forms.custreg.pass.value; 

var atpos = email.indexOf("@");
var dotpos = email.lastIndexOf(".");

if(email==null||email=="")
{
alert("Email cannot be blank");
document.forms.custreg.email.focus();
return false;
}
if(atpos<1||dotpos<atpos+2||dotpos+2>=email.length)
{
  alert("Not a valid email address");
  document.forms.custreg.email.focus();
  return false;
}

if(fname==null||fname=="")
{
	alert("Firstname cannot be blank");
	document.forms.custreg.fname.focus();
	return false;
}
if(c.test(document.forms.custreg.fname.value)==false)
{
	alert("Firstname can contain only alphabets!!");
	document.forms.custreg.fname.focus();
	return false;
}
if(lname==null||lname=="")
{
	alert("Lastname cannot be blank");
	document.forms.custreg.lname.focus();
	return false;
}
if(c.test(document.forms.custreg.lname.value)==false)
{
	alert("Lastname can contain only alphabets!!");
	document.forms.custreg.lname.focus();
	return false;
}

if(phon==null||phon=="")
{
	alert("Phone number cannot be blank");
	document.forms.custreg.phone.focus();
	return false;
}
if(phon.length!=10)
{
    alert("Mobile number must have 10 digits");
	document.forms.custreg.phone.focus();
	return false;
}
if(phon==0000000000||phon==1111111111||phon==2222222222||phon==3333333333||phon==4444444444||phon==5555555555||phon==6666666666||phon==7777777777||phon==8888888888||phon==9999999999)
{
    alert("Invalid number!!");
	document.forms.custreg.phone.focus();
	return false;
}
if(a.test(document.forms.custreg.phone.value)==false)
{
	alert("Phone number will have digits only!!");
	document.forms.custreg.phone.focus();
	return false;
}


if(logn==null||logn=="")
{
alert("Login name cannot be blank");
document.forms.custreg.logname.focus();
return false;
}
if(b.test(document.forms.custreg.logname.value)==false)
{
alert("Login can contain alphabets and numbers only");
document.forms.custreg.logname.focus();
return false;
}
if(pass==null||pass=="")
{
alert("Password cannot be blank");
document.forms.custreg.pass.focus();
return false;
}
if(b.test(document.forms.custreg.pass.value)==false)
{
alert("Password can contain alphabets and numbers only");
document.forms.custreg.pass.focus();
return false;
}
}
</script>
</head>
  <body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Register to Open Account</a>
    </div>
	</div>
  </nav>
 <form name="custreg" action="register.java" method ="post" onsubmit="return validate()">
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email" name="email" placeholder="Email address">
  
  
    <label for="fname">Fisrt name:</label>
    <input type="fname" class="form-control" id="fname" name="fname" placeholder="Enter First Name">
  
  
    <label for="Last Name">Last name:</label>
    <input type="lanme" class="form-control" id="lname" name="lname" placeholder="Enter Last Name">
  
  
    <label for="conno">Mobile No:</label>
    <input type="conno" class="form-control" id="conno" name="phone" placeholder="Enter Phone Number">
  
  
    <label for="uname">Enter Username :</label>
    <input type="text" class="form-control" id="uname" name="logname" placeholder="Enter User name">
  
    
    <label for="Password">Enter Password :</label>
    <input type="Password" class="form-control" id="ex2" name="pass" placeholder="Enter Password">
 
  
  <button type="submit" class="btn btn-default">Submit</button>
	<button type="reset" class="btn btn-default">Clear </button>
</div>
<nav class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Registered product of Sandipan</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="index.html">Home</a></li>
      <li><a href="#"><img src ="twitterlogo.png" height="20px" width="20px " /></a></li>
      <li><a href="#"><img src ="facebook.png"    height="20px" width="20px " /></a></li>
      <li><a href="#"><img src ="googleplus.png" height="20px"  width="20px " /></a></li>
    </ul>
  </div>
</nav>
</form>
</body>
</html>