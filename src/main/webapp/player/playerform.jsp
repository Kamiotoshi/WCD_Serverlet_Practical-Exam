<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Player Form</title>
  <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
<h1>${player != null ? "Edit Player" : "Add New Player"}</h1>
<form action="player" method="post">
  <input type="hidden" name="id" value="${player != null ? player.playerId : ''}">
  <input type="hidden" name="action" value="${player != null ? 'update' : 'create'}">

  <div>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${player != null ? player.name : ''}" required>
  </div>
  <div>
    <label for="fullName">Full Name:</label>
    <input type="text" id="fullName" name="fullName" value="${player != null ? player.fullName : ''}" required>
  </div>
  <div>
    <label for="age">Age:</label>
    <input type="text" id="age" name="age" value="${player != null ? player.age : ''}" required>
  </div>
  <div>
    <label for="indexId">Index ID:</label>
    <input type="number" id="indexId" name="indexId" value="${player != null ? player.indexId : ''}" required>
  </div>
  <div>
    <button type="submit">Save</button>
    <a href="player">Cancel</a>
  </div>
</form>
</body>
</html>
