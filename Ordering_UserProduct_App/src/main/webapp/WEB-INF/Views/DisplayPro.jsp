<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.div {
height:450px;
	display: flex;
	justify-content: center;
	align-items: center;
	
}

.div1 {
	height: 75%;
	width: 45%;
	background-color: aqua;
	display: flex;
    justify-content: space-around;
    align-items: center;
    border-bottom:  black;
    border-radius: 15px;
}
</style>
</head>
<body>
<div class="div">
		<div class="div1">
			<form class="form" action="findp" method="get">
				<h2>Product Id:-${product.getId()}</h2>
				<h2>Product Name:-${product.getName()}</h2>
				<h2>Product Brand:-${product.getBrand()}</h2>
				<h2>Product Category:-${product.getCategory()}</h2>
				<h2>Product Cost:-${product.getCost()}</h2>
				<h2>Product ImageUrl:-${product.getImageurl()}</h2>
			</form>
		</div>
	</div>
</body>
</html>