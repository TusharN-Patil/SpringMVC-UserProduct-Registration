<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.div {
	height: 450px;
	display: flex;
	justify-content: center;
	align-items: center;
	display: flex;
}

.div1 {
	height: 75%;
	width: 45%;
	background-color: aqua;
	display: flex;
	justify-content: space-around;
	align-items: center;
	border-bottom: black;
	border-radius: 15px;
}

.form {
	height: 60%;
	width: 65%;
	padding-top: 90px;
	margin-left: 50px;
}
</style>
</head>
<body>
<div class="div">
		<div class="div1">
			<form action="updatep" class="form">
			User Id:-<input type="number" name="user_id" placeholder="Enter User Id To Update Product!!!"><br>
			  ProductId:-<input type="number" name="id" placeholder="Enter Product Id!!!"><br>
				Name:-<input type="text" name="name" placeholder="Enter your name!!"><br>
				brand:-<input type="text" name="brand"
					placeholder="Enter your Brand!!"><br> 
			   Category:-<input
					type="text" name="category" placeholder="Enter your category!!"><br>
				Cost:-<input type="number" name="cost"
					placeholder="Enter your Cost!!"><br>
				ImageUrl:-<input type="text" name="imageurl" placeholder="Enter your ImageUrl!!"><br>
					 <input
					type="submit" value="Update!!"><br>
			</form>
		</div>
	</div>
</body>
</html>