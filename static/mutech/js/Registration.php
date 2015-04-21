<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link rel="stylesheet" href="FormValidation.css">
<script type="text/javascript" src="MyFormValidation.js" ></script>
<script>
//Function for allowing only numbers in postal code and phone numbers... 
//Here 8 is for backspace key, 37 for left arrow key and 39 for right arrow key and 9 is for Tab.
//Here is a problem that ascii key conflicts occur at 37 and 39 % and ' also work.
function onlyNumbers(event)				
{
    	var e =event; 
   	var charCode = e.which || e.keyCode;

    		if ((charCode >= 48 && charCode <= 57) || charCode == 8 || charCode == 37 || charCode == 39 || charCode == 9) 
       			 return true;
			else
				 return false;

}
function onlyChars(event)
{
	var e =event;
	var charCode = e.which || e.keyCode;
	if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || charCode == 8 || charCode == 9)
		return true;
	else 
		return false;
}

function onlyRoll(event)
{
 var e =event;
 var roll=e.which || e.keycode;
 if((roll >= 65 && roll <= 90) || (roll >= 97 && roll <= 122) || (roll >= 48 && roll <= 57) || roll == 45 || roll == 8 || roll == 9)
 	return true;
 else
 	return false;
}
/*Function used to copy the current address to permanent address*/
function Copy(add)
{
	if(add.checkme.checked==true)
	{
		add.permanentaddress.value=add.currentaddress.value;
	}
}
function digitsonly(e)
{
	var data=document.getElementById('cnumber').value;
	if(data.Length!=10)
       {
       alert("Please enter 10 digits");
       return false;
       }
    else
    	return true;   
}
</script>
</head>
<body>
	<div class="container">
		<div class="row">
					
<div class="col-md-6">
	<label>
		<h2 style="color:green">Student Registration</h2>
	</label>
		<form role="form" method="POST" id="theForm" action="Registration.php"> 
	 		<div class="form-group">
                     <label>Name</label>
	<div class="row">
 	 <div class="col-xs-4">
   		 <input type="text" class="form-control" placeholder="Name" onkeypress="return onlyChars(event)" name="firstname" id="name"> <span id="nameError" class="red"></span>
  	</div>
  	<div class="col-xs-4">
   		 <input type="text" class="form-control" placeholder="MiddleName" onkeypress="return onlyChars(event)" name="midname">
  	</div>
  	<div class="col-xs-4">
    		<input type="text" class="form-control" placeholder="LastName" onkeypress="return onlyChars(event)" name="lastname" id="lname"> <span id="lnameError" class="red"></span>
		
	  </div>
	</div>
                   
	 <div>
	 <label>Father's Name</label>
	<input type="text" class="form-control" placeholder="Father Name" onkeypress="return onlyChars(event)" name="fathername" id="fname"><span id="fnameError" class="red"></span>
	</div>
	
	<div>
	<label>Mother's Name</label>
	<input type="text" class="form-control" placeholder="Mother Name" onkeypress="return onlyChars(event)" name="mothername" id="mname"><span id="mnameError" class="red"></span>
	</div>

	<label>Roll Number</label>
	<div class="row">
	<div class="col-md-4"><input type="text" class="form-control" minlength="10" maxlength="10" placeholder="IC-2K11-62" onkeypress="return onlyRoll(event)" name="rollno"></div>
	</div>

	<div>
	<label>Choose your username</label>
	<input type="text" class="form-control" placeholder="username" name="username" id="uname"><span id="unameError" class="red"></span>
	</div>

	<div>
	<label>Password</label>
	<input type="password" class="form-control" placeholder="......" name="pwd" id="passwd">
	<span id="passwordError" class="red"></span>
	</div>
	
	<div>
	<label>Confirm Password</label>
	<input type="password" class="form-control" placeholder="......" name="pwd1" id="pwVerified"><span id="cnfrmpwdError" class="red"></span>
	</div>
	
	<label>BirthDay</label>
	<input id="datepicker" name="dob">
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
$(function() {
$( "#datepicker" ).datepicker({
changeMonth: true,
changeYear: true,
dateFormat: 'yy-mm-dd'
});
});
	</script>
	

	<label>Gender</label>
	<div class="row">
	<div class="col-md-4">
	<select class="form-control" name="gender">
  	<option>Male</option>
  	<option>Female</option>
	</select>
  	</div>
	</div>	

	<label>Student's Contact Number</label>
	<div class="row">
	<div class="col-md-4">
	<input type="text" class="form-control" placeholder="9993823108" name="studentnumber"  
	onkeypress="return onlyNumbers(event)" maxlength="10">
	
	</div>
	</div>

	<label>Guardian's Contact Number</label>
	<div class="row">
	<div class="col-md-4">
	<input type="text" class="form-control" placeholder="9993823108" maxlength="10" name="guardiannumber" onkeypress="return onlyNumbers(event)">
	</div>
	</div>

	<label>Email</label>
 	<input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email"> 	

	<label>Current Address</label>
 	<textarea class="form-control" rows="3" id="add" name="currentaddress" ></textarea>

 	<label>
 	<input type="checkbox" style="display:inline;" name="checkme" onclick="Copy(this.form)">
 	<span style="display:inline;">Copy to Permanent Address</span>
 	</label>
 	<br>

	<label>Permanent Address</label>
 	<textarea class="form-control" rows="3" name="permanentaddress" ></textarea>
 	<br>
	<input class="btn btn-success" type="submit" name="submit" value="Submit" id="submit" style="width:auto">
	<input class="btn btn-danger" type="reset" value="Reset" style="width:auto">
	
			</div>
	<!--<a class="btn btn-success" href="Registration2.html" role="button">Next Step</a>
	-->
		</form>

</div>
				
		</div>
	</div>

</body>
</html>


<?php
$connect=mysqli_connect('localhost','root','','Rajat');
/*if($connect)
echo "Connected";
else
echo "Not connected";
*/
if(isset($_POST['submit']))
{
	$pwd=$_POST['pwd'];
	$pwd1=$_POST['pwd1'];
	if($pwd==$pwd1)
	{
		$firstname=mysqli_real_escape_string($connect, $_POST['firstname']);
		$midname=mysqli_real_escape_string($connect,$_POST['midname']);
		$lastname=mysqli_real_escape_string($connect,$_POST['lastname']);
		$fathername=mysqli_real_escape_string($connect,$_POST['fathername']);
		$mothername=mysqli_real_escape_string($connect,$_POST['mothername']);
		$rollno=mysqli_real_escape_string($connect,$_POST['rollno']);
		$username=mysqli_real_escape_string($connect,$_POST['username']);
		$pwd=mysqli_real_escape_string($connect,$_POST['pwd']);
		$dob=mysqli_real_escape_string($connect,$_POST['dob']);
		$gender=mysqli_real_escape_string($connect,$_POST['gender']);
		$studentnumber=mysqli_real_escape_string($connect,$_POST['studentnumber']);
		$guardiannumber=mysqli_real_escape_string($connect,$_POST['guardiannumber']);
		$email=mysqli_real_escape_string($connect,$_POST['email']);
		$currentaddress=mysqli_real_escape_string($connect,$_POST['currentaddress']);
		$permanentaddress=mysqli_real_escape_string($connect,$_POST['permanentaddress']);
		$test=mysqli_query($connect, "INSERT INTO registration (name,middlename,lastname,fathername,mothername,rollno,username,password,dob,gender,studentno,parentno,email,currentadd,permanentadd)
			VALUES ('$firstname','$midname','$lastname','$fathername','$mothername','$rollno','$username','$pwd','$dob','$gender','$studentnumber','$guardiannumber','$email','$currentaddress','$permanentaddress')") or die(mysqli_error($connect));
		if($test)
			echo "Record Submitted";
		else
			echo "Error";
	}
	else
		echo "Invalid Password";
}
?>