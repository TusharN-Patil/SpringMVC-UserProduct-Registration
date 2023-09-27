<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.div {
	height: 350px;
	width:700px;
	display: flex;
	justify-content: center;
	align-items: center;
	display: flex;
	margin-left: 300px;
	margin-top: 100px;
}

.div1 {
	height: 494px;
	width: 45%;
	background-color: aqua;
	display: flex;
	margin-top:150px;
	justify-content: space-around;
	align-items: center;
	border-bottom: black;
	border-radius: 15px;
}

.form {
	height: 60%;                 
	width: 65%;
	margin-bottom:89px;
	margin-left: 48px;
}

input{
height: 20px;
width:160px
}
</style>
</head>
<body>

<section class="div">
		<div class="div1">
			<form action="savep" class="form">
			User Id:-<input type="number" name="user_id" placeholder="Enter User Id!!!"><br><br>
				Name:-<input type="text" name="name" placeholder="Enter your name!!"><br><br>
				brand:-<input type="text" name="brand"
					placeholder="Enter your Brand!!"><br> <br>
			   Category:-<input
					type="text" name="category" placeholder="Enter your category!!"><br><br>
				Cost:-<input type="number" name="cost"
					placeholder="Enter your Cost!!"><br><br>
				ImageUrl:-<input type="text" name="imageurl" placeholder="Enter your ImageUrl!!"><br><br>
					 <input
					type="submit" value="Register">
			</form>
		</div>
	</section>
</body>
</html>