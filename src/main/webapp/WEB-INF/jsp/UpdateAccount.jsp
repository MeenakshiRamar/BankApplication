<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Account</title>
<center><h3>M BANK</h3></center>
</head>
<body><center>
<table>
<form action="Update1" method="GET">
<tr><th>Name</th><td> <input type="text" name="pn" value="${details.name}" ></td></tr>
<tr><th>LastName</th><td> <input type="text" name="pl" value="${details.lastName}"></td></tr>
<tr><th>DOB</td><th> <input type="text" name="pd" value="${details.DOB}"></td></tr>
<tr><th>Mobile Number</th><td> <input type="text" name="pm" value="${details.mobileNumber}"></td></tr>
<tr><th>Gender</th><td> <input type="text" name="pg" value="${details.gender}"></td></tr>
<tr><th>Address</th><td> <input type="text" name="pa" value="${details.address}"></td></tr>
<tr><th>E Mail</th><td> <input type="text" name="pe" value="${details.eMail}"></td></tr>
<tr><th>Account Id</th><td> <input type="text" name="pi" value="${details.accountId}" readonly="readonly"></td></tr>

<tr><td><p style="text-align:center;"><input type="submit"></td></tr>
</form>
</table></center>
</body>
</html>