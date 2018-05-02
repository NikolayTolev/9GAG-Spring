<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Settings</title>
</head>
<body>

	<c:import url="navbar.jsp"></c:import>

	<div class="container-fluid text-center">
		<div class="row content">
			<c:import url="left-sidebar.jsp"></c:import>
			<div class="col-sm-8 text-center">
				<h5 style="color: red">
					<i>${error}</i>
				</h5>
				<h5 style="color: blue">
					<i>${success}</i>
				</h5>
				<h1>Settings</h1>
				<form action="update" method="post">
					<table align="center">
						<tr>
							<td><i>First&nbsp;name&nbsp;</i></td>
							<td><input type="text" name="firstName" style="width: 380px" 
								value="${sessionScope.user.firstName}" /></td>
						</tr>
						<tr>
							<td><i>Last&nbsp;name&nbsp;</i></td>
							<td><input type="text" name="lastName" style="width: 380px" 
								value="${sessionScope.user.lastName}" /></td>
						</tr>
						<tr>
							<td>Gender&nbsp;</td>
							<td><select style="width: 380px; height: 30px" name="gender">
									<c:forEach var="gender" items="${sessionScope.genders}">
										<option value="${gender.id}">${gender.type}</option>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td><i>Country&nbsp;</i></td>
							<td><select style="width: 380px; height: 30px" name="country">
									<c:forEach var="country" items="${sessionScope.countries}">
										<option value="${country.id}">${country.name}</option>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td><i>Biography&nbsp;</i></td>
							<td><textarea name="biography" rows="4" cols="50" style="resize: none;">${sessionScope.user.biography}</textarea></td>
						</tr>
						<tr>
							<td><input type="submit" align="middle"
								style="background-color: green;" value="SAVE CHANGES" /></td>
						</tr>
					</table>
				</form>
				<form action="deleteAccount" method="post">
					<input type="button" value="Delete account" />
				</form>
			</div>
			<c:import url="right-sidebar.jsp"></c:import>
		</div>
	</div>
	<footer class="container-fluid text-center">
	<p>Footer Text</p>
	</footer>
</body>
</html>