<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Registration Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		First Name:<form:input path="firstName"/>
		<br><br>
		Last Name: <form:input path="lastName"/>
		<br><br>
		Country:
		<form:select path="country">
			<form:options items="${countryOptions}"/>
		</form:select>
		<br><br>
		Favourite:
		Java <form:radiobutton path="favouriteLanguage" value ="Java"/>
		C# <form:radiobutton path="favouriteLanguage" value ="C#"/>
		PHP <form:radiobutton path="favouriteLanguage" value ="PHP"/>
		<br><br>
		Operating System:
		Ms Windows: <form:checkbox path="operatingSystem" value="Ms Windows"/>
		Mac Os:<form:checkbox path="operatingSystem" value="Mac Os"/>
		Linux: <form:checkbox path="operatingSystem" value="Linux"/>
		<br><br>
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>