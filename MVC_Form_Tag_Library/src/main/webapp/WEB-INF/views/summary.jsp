<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
    <h3>Details Submitted!!!</h3>
  
    <table>
        <tr>
            <td>Full Name:</td>
            <td>${welcome.name}</td>
        </tr>
        <tr>
            <td>Your Password:</td>
            <td>${welcome.password}</td>
        </tr>
        <tr>
            <td>E-Mail Address:</td>
            <td>${welcome.email}</td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>${welcome.gender}</td>
        </tr>
        <tr>
            <td>Highest Education:</td>
            <td>${welcome.education}</td>
        </tr>
        <tr>
            <td>Current company Name:</td>
            <td>${welcome.company}</td>
        </tr>
        <tr>
            <td>Looking for a job change?:</td>
            <td>${welcome.job}</td>
        </tr>
        <tr>
            <td>Job Type:</td>
            <td>${welcome.jobType}</td>
        </tr>
        <tr>
            <td>Years of experience:</td>
            <td>${welcome.years}</td>
        </tr>
        <tr>
            <td>Programming skills:</td>
            <td>${welcome.skill}</td>
        </tr>
        <tr>
            <td>Profile summary :</td>
            <td>${welcome.note}</td>
        </tr>
    </table>
  
</body>
</html>