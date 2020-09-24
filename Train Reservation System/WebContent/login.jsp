<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!-- HARISH -->
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="CSS/login.css" media="screen">
		<meta charset="ISO-8859-1">
		<title>Login</title>
	</head>

	<body>
	<h1>Login</h1>
	<div class="body">
		<form  name="LoginForm" action= "trainController" method="post">
			<div align="center">
				<table>
					<tr><td>User ID</td>
					<td><input type="text" name="uname" required></td>
					</tr>
					<tr><td>Password</td>
					<td><input type="password" name="pass" required></td>
					</tr>
				</table>
				<%session.setAttribute("status", "valid"); %>
				<a href="forgotpwd.jsp" ><b>forgot password??</b></a>
			</div>
		
	<div class="center">
	    <div id="captchaBackground">
	    <div id="captchaData">
	     <table><tr><td> <span id="captcha">Captcha text</span></td></tr>
	     <tr><td> <input id="textBox" type="text" name="text"></td></tr></table>
	     </div>
	      <div id="buttons" class="buttons">
	        <input id="submit" type="submit" value="Login" name="trainButton" style="font-family: Arial, Times New Roman; background-image: linear-gradient(#f0f0f0, #C0C0C0); box-shadow: 5px 5px 2px black; color: #1a116b; padding: 10px; border-radius: 25px 25px 25px 25px; font-size:80%">
	        <button id="refresh" type="submit" style="font-family: Arial, Times New Roman; background-image: linear-gradient(#f0f0f0, #C0C0C0);; box-shadow: 5px 5px 2px black;color: #1a116b; padding: 10px; border-radius: 25px 25px 25px 25px; font-size:80%">Refresh</button>
	      </div> 
	      <span id="output"></span>
	    </div>
	  </div>
	  <script>
	  let captchaText = document.querySelector('#captcha');
	  let userText = document.querySelector('#textBox');
	  let submitButton = document.querySelector('#submit');
	  let output = document.querySelector('#output');
	  let refreshButton = document.querySelector('#refresh');
	
	  let alphaNums = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
	  let emptyArr = [];
	  for(let i = 1; i <= 7; i++) {
	  	emptyArr.push(alphaNums[Math.floor(Math.random() * alphaNums.length)]);
	  }
	  captchaText.innerHTML = emptyArr.join('');
	
	  userText.addEventListener('keyup', function(e) {
	  	if(e.keyCode === 13) {
	  		if(userText.value === captchaText.innerHTML) {
	  			output.classList.add("greenText");
	  			document.getElementById('success').innerHTML = "Correct!";
	  			
	  		} else {
	  			output.classList.add("redText");
	  			document.getElementById('error').innerHTML = "Incorrect, please try again";
	  		}
	  	}
	  });
	
	  submitButton.addEventListener('click',  function() {
	  	if(userText.value === captchaText.innerHTML) {
	  		output.classList.add("greenText");
	  		document.getElementById('success').innerHTML = "Correct!";
	  		
	  	} else {
	  		output.classList.add("redText");
	  		document.getElementById('error').innerHTML = "Incorrect, please try again";
	  	}
	  });
	
	  refreshButton.addEventListener('click', function () {
	  	userText.value = "";
	  	let refreshArr = [];
	  	for(let j = 1; j <= 7; j++) {
	  		refreshArr.push(alphaNums[Math.floor(Math.random() * alphaNums.length)]);
	  	}
	  	captchaText.innerHTML = refreshArr.join('');
	  	output.innerHTML = "";
	  });
	
	  submitButton.addEventListener('keyup', function(e) {
	  	if(e.keyCode === 13) {
	  	if(userText.value === captchaText.innerHTML) {
	  		console.log("correct!");
	  		output.classList.add("greenText");
	  		document.getElementById('success').innerHTML= "Correct!";
	  	} else {
	  		output.classList.add("redText");
	  		document.getElementById('error').innerHTML = "Incorrect, please try again";
	  	}
	  	}
	  });
	  </script>
	  
	  <script>
	  if(document.getElementById('success').innerHTML=="Correct!")
			  {
		  <br><input type="submit" value="Login" name="trsButton" style="font-family: Century Gothic, Arial, Times New Roman; background-image: linear-gradient(#f0f0f0, #C0C0C0);; box-shadow: 5px 5px 2px grey;color: #1a116b; padding: 10px 50px 10px 50px; border-radius: 25px 25px 25px 25px; font-size:100%"><br></br>
			  }
	  else
		  alert("Invalid Captcha");
	  </script>
    
               <span id="error" style="color:red"></span>
          
            
               <span id="success" style="color:green"></span>
            
	  </form>
	  </div>
	  
	  
	</body>
	  <footer>Don't have a account? <a href ="registration.jsp">Register Here</a></footer>
</html>