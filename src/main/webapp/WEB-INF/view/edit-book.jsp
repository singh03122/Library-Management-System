<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Book</title>
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <div class="card shadow">
            <div class="card-header bg-warning text-white">
                <h3 class="text-center">Update Book Details</h3>
            </div>
            <div class="card-body">
            <form:form action="${book.bookid}/update" modelAttribute="book" method="post">
                    <div class="form-group">
                        <form:label path="bookid">Book ID (read-only)</form:label>
                        <form:input path="bookid" cssClass="form-control" readonly="true"/>
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
                        <input type="submit" value="Update Book" class="btn btn-primary">
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
