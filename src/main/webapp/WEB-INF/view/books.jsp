<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Library</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f2f5;
        padding: 40px 20px;
    }

    .container {
        max-width: 1100px;
        margin: auto;
        background-color: #fff;
        border-radius: 12px;
        padding: 30px;
        box-shadow: 0 10px 20px rgba(0,0,0,0.05);
    }

    h2 {
        text-align: center;
        color: #222;
        margin-bottom: 30px;
        font-size: 2em;
    }

    .button-container {
        text-align: center;
        margin-bottom: 30px;
    }

    .button-container a button {
        background-color: #007bff;
        color: white;
        padding: 12px 24px;
        font-size: 16px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    .button-container a button:hover {
        background-color: #0056b3;
    }

    .table-wrapper {
        overflow-x: auto;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 14px 20px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #f7f9fc;
        color: #333;
        font-weight: 600;
    }

    tr:hover {
        background-color: #f1f5ff;
    }

    td {
        color: #555;
    }

    .table-title {
        font-size: 1.3em;
        margin-bottom: 10px;
        color: #444;
        font-weight: 500;
    }
    .action-buttons {
    display: flex;
    gap: 10px;
    align-items: center;
}

.edit-btn, .delete-btn {
    padding: 6px 14px;
    border: none;
    border-radius: 6px;
    font-size: 14px;
    cursor: pointer;
    transition: all 0.3s ease;
    text-decoration: none;
    display: inline-block;
}

.edit-btn {
    background-color: #ffc107;
    color: #212529;
    font-weight: 500;
}

.edit-btn:hover {
    background-color: #e0a800;
    color: white;
}

.delete-form {
    margin: 0;
}

.delete-btn {
    background-color: #dc3545;
    color: white;
    font-weight: 500;
}

.delete-btn:hover {
    background-color: #c82333;
}
    
</style>
</head>
<body>
    <div class="container">
        <h2>Book Library</h2>
        <div class="button-container">
            <a href='/new-book'>
                <button type='submit'>+ Add New Book</button>
            </a>
        </div>

        <div class="table-wrapper">
            <div class="table-title">Book List</div>
            <table>
                <thead>
                    <tr>
                        <th>Book ID</th>
                        <th>Book Name</th>
                        <th>Author ID</th>
                        <th>Author Name</th>
                        <th>Course</th>
                        <th>Operation</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="book" items="${books}">
                        <tr>
                            <td>${book.bookid}</td>
                            <td>${book.book_Name}</td>
                            <td>${book.author_Id}</td>
                            <td>${book.author_Name}</td>
                            <td>${book.course}</td>
                            <td>
                          <div class="action-buttons">
                           <a href='/${book.bookid}' class="edit-btn">Edit</a>
                           <form action='/${book.bookid}/delete' method='post' class="delete-form">
                           <input type='submit' value='Delete' class="delete-btn"/>
                           </form>
                           </div>
                            </td>
                                                    
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>