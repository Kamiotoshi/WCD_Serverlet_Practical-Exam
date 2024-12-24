<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Player List</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
<h1>Player List</h1>
<a href="player?action=create">Add New Player</a>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Full Name</th>
        <th>Age</th>
        <th>Index ID</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="player" items="${players}">
        <tr>
            <td>${player.playerId}</td>
            <td>${player.name}</td>
            <td>${player.fullName}</td>
            <td>${player.age}</td>
            <td>${player.indexId}</td>
            <td>
                <a href="player?action=edit&id=${player.playerId}">Edit</a>
                <a href="player?action=delete&id=${player.playerId}" onclick="return confirm('Are you sure?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
