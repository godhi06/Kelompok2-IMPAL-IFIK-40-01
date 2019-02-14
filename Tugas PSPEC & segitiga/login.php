<!DOCTYPE html>
<html>
<head>
	<title>login</title>
	
</head>
<body>
	<br/>
	<br/>
	
	<br/>
	<div class="login">
	<br/>
		<form action="login.php" method="post" onSubmit="return validasi()">
			<h1>LOGIN</h1>
			<div>
				<label>Username:</label>
				<input type="text" name="username" id="username" />
			</div>
			<div>
				<label>Password:</label>
				<input type="password" name="password" id="password" />
			</div>			
			<div>
				<input type="submit" value="Login" class="tombol">
			</div>
		</form>
	</div>
</body>

<script type="text/javascript">
	function validasi() {
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;		
		if (username != "" && password!="") {
			return true;
		}else{
			alert('Username dan Password harus di isi !');
			return false;
		}
	}

</script>
</html>