<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration</title>
</head>

<body>

<h1>Registration Form</h1><br/>

<form:form modelAttribute="student" action="registration" method="post">
    <fieldset>
        <legend> Add Student</legend>

        <p>
            <form:errors path="*" cssStyle="color : red;"/>
        </p>

        <p>
            <label for="id">Student Id: </label>
                <form:input path="id" id="id" type="text"></form:input>

        <div>
            <form:errors path="id" cssStyle="color : red;"/>
        </div>
        </p>

        <p>
            <label for="firstName">First Name: </label>
                <form:input path="firstName" id="lastName" type="text"/>
        <div>
            <form:errors path="firstName" cssStyle="color : red;"/>
        </div>
        </p>

        <p>
            <label for="lastName">Last Name: </label>
                <form:input path="lastName" id="lastName" type="text"/>
        <div>
            <form:errors path="lastName" cssStyle="color : red;"/>
        </div>
        </p>

        <p>
            <label for="email">Email: </label>
                <form:input path="email" id="email" type="email"/>
        <div>
            <form:errors path="email" cssStyle="color : red;"/>
        </div>
        </p>

        <p>
            <label for="gender">Gender: </label>
            <form:select path="gender" id="gender">
                <form:option value="Male" label="Male"/>
                <form:option value="Female" label="Female"/>
            </form:select>
        </p>

        <p>
            <label>Phone: <form:input id="phone.area" path="phone.area" type="text"/> </label>-
                <form:input path="phone.prefix" type="text"/> -
                <form:input path="phone.number" type="text"/>

        <div>
            <form:errors path="phone.area" cssStyle="color : red;"/>
        </div>

        <div>
            <form:errors path="phone.prefix" cssStyle="color : red;"/>
        </div>

        <div>
            <form:errors path="phone.number" cssStyle="color : red;"/>
        </div>
        </p>

        <p>
            <label for="birthday">Birthday: </label>
                <form:input path="birthday" id="birthday" type="text"/>
        <div>
            <form:errors path="birthday" cssStyle="color : red;"/>
        </div>
        </p>


        <p>
            <input id="submit" type="submit" value="Add Student">
        </p>
    </fieldset>
</form:form>


</body>
</html>