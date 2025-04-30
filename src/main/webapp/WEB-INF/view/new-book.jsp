<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add New Book</title>
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
</head>
<body>
<!-- Beautiful Banner Title -->
<div class="text-center py-4" style="background: linear-gradient(to right, #0062E6, #33AEFF); box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
    <h1 style="color: white; font-weight: 700; font-size: 2.8rem; letter-spacing: 1px; text-shadow: 1px 1px 2px rgba(0,0,0,0.2);">
        📚 Library Management System
    </h1>
</div>

    <div class="container mt-5">
        <div class="card shadow">
            <div class="card-header bg-primary text-white">
                <h3 class="text-center">New Book Registration</h3>
            </div>
            <div class="card-body">
                <form:form action="/add" modelAttribute="book" method="post">
                    <div class="form-group">
                        <form:label path="bookid">Book ID</form:label>
                        <form:input path="bookid" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <form:label path="book_Name">Book Name</form:label>
                        <form:input path="book_Name" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <form:label path="author_Id">Student ID</form:label>
                        <form:input path="author_Id" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <form:label path="author_Name">Student Name</form:label>
                        <form:input path="author_Name" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <form:label path="course">Course</form:label>
                        <form:input path="course" cssClass="form-control"/>
                    </div>
                    <div class="form-group text-center">
                        <input type="submit" value="Add Book" class="btn btn-success">
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
