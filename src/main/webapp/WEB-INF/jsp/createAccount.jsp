<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
</head>
<body>
<center><h2>M BANK</h2></center>
<body><center>

<table>
<form:form action="/created" method="post" modelAttribute="beanbank">
<tr><th><p style="text-align:center;">Name</th>
<td><form:label path="name"></form:label></td>
<td><form:input type="text" path="name" id="n" /></td></tr>
<tr><th><p style="text-align:center;">Last Name</th>
<td><form:label path="lastName"></form:label></td>
<td><form:input type="text" path="lastName" id="ln" /></td>
</tr>
<tr><th><p style="text-align:center;">DOB</th>
<td><form:label path="DOB"></form:label></td>
<td><form:input type="text" path="DOB" id="dob" /></td>
</tr>
<tr><th><p style="text-align:center;">Mobile Number</th>
<td><form:label path="mobileNumber"></form:label></td>
<td><form:input type="text" path="mobileNumber" id="mn" /></td>
</tr>
<tr><th><p style="text-align:center;">Gender</th>
<td><form:label path="gender"></form:label></td>
<td><form:input type="text" path="gender" id="gd" /></td>
</tr>
<tr><th><p style="text-align:center;">Address</th>
<td><form:label path="address"></form:label></td>
<td><form:input type="text" path="address" id="ad" /></td>
</tr>
<tr><th><p style="text-align:center;">E-Mail</th>
<td><form:label path="eMail"></form:label></td>
<td><form:input type="text" path="eMail" id="em" /></td>
</tr>
<tr><th><p style="text-align:center;">Account-Id</th>
<td><form:label path="accountId"></form:label></td>
<td><form:input type="text" path="accountId" id="ai" /></td></tr>
<tr><td><p style="text-align:center;"><input type="submit"></td></tr>
</form:form></table></center>
</body>
</body>
</html>