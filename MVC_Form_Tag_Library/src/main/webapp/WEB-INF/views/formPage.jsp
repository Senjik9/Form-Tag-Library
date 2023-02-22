<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
    <h1>Welcome to the Test Page!</h1>
    <h3>Please enter your details</h3>
    
    <form:form action="submit" method="post" modelAttribute="welcome">
    	<table>
    		<tr>
    			<td><form:label path="name">Full Name: </form:label></td>
                <td>
                	<form:input path="name" />
               	    <form:errors path="name" cssStyle="color:red"/>
               	</td>
    		</tr>
    		<tr>
                <td><form:label path="password">Set your Password: </form:label></td>
                <td>
                	<form:password path="password" />
                	<form:errors path="password" cssStyle="color:red"/>
                </td>
            </tr>
            <tr>
                <td><form:label path="email">E-Mail Address: </form:label></td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td><form:label path="gender">Gender: </form:label></td>
                <td>
                	<form:radiobutton path="gender" value="Male" label="Male" />
                    <form:radiobutton path="gender" value="Female" label="Female" />
                </td>
            </tr>
            <tr>
                <td><form:label path="education">Highest Education: </form:label></td>
                <td>
                	<form:select path="education">
                        <form:option value="Intermediate"></form:option>
                        <form:option value="Graduation"></form:option>
                        <form:option value="Post-Graduation"></form:option>
                    </form:select>
            	</td>
            </tr>
            <tr>
                <td><form:label path="job">Looking for a job change?: </form:label></td>
                <td><form:checkbox path="job" value="Yes" /></td>
            </tr>
            <tr>
                <td><form:label path="company">Current company Name: </form:label></td>
                <td><form:input path="company" /></td>
            </tr>
            <tr>
                <td><form:label path="jobType">Job Type: </form:label></td>
                <td><form:select path="jobType" items="${jobType}"></form:select></td>
            </tr>
            <tr>
                <td><form:label path="years">Years of experience: </form:label></td>
                <td>
                	<form:radiobuttons path="years" items="${experienceYears}" delimiter=" " />
                </td>
            </tr>
            <tr>
                <td><form:label path="skill">Programming skills: </form:label></td>
                <td><form:checkboxes path="skill" items="${programmingSkills}" delimiter=" "/></td>
            </tr>
            <tr>
                <td><form:label path="note">Profile summary : </form:label></td>
                <td><form:textarea path="note" rows="5" cols="40"/></td>
            </tr>
            <tr>
                <td><form:button>Submit</form:button></td>
            </tr>
    	</table>
    </form:form>
  
</body>
</html>