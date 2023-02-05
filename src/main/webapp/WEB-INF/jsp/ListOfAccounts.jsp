<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Of Accounts</title>
<center><h3>M BANK</h3></center>
</head>
<body><center>
<table border="1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<tr>
<td>Name</td><td>LastName</td><td>DOB</td><td>Mobile Number</td><td>Gender</td><td>Address</td><td>E Mail</td><td>Account Id</td><td>Update</td><td>Delete</td>
</tr>
<c:forEach items="${list}" var="viewUsers">
<tr><td>${viewUsers.name}</td>
<td>${viewUsers.lastName}</td>
<td>${viewUsers.DOB}</td>
<td>${viewUsers.mobileNumber}</td>
<td>${viewUsers.gender}</td>
<td>${viewUsers.address}</td>
<td>${viewUsers.eMail}</td>
<td>${viewUsers.accountId}</td>
<td><a href="/DeleteAccount?pn=${viewUsers.name}&pl=${viewUsers.lastName}&pd=${viewUsers.DOB}&pm=${viewUsers.mobileNumber}&pg=${viewUsers.gender}&pa=${viewUsers.address}&pe=${viewUsers.eMail}&pi=${viewUsers.accountId}">
Delete product</a></td>
<td><a href="/UpdateAccount?pn=${viewUsers.name}&pl=${viewUsers.lastName}&pd=${viewUsers.DOB}&pm=${viewUsers.mobileNumber}&pg=${viewUsers.gender}&pa=${viewUsers.address}&pe=${viewUsers.eMail}&pi=${viewUsers.accountId}">
Update product</a></td>
</tr>
</c:forEach>
</table></center>
</body>
</html>