<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 16.10.2021
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&amp;subset=cyrillic" rel="stylesheet">
    <link rel="stylesheet" href="../css/main.css">
    <title>new post</title>
</head>
<body>
<div class="container">
    <div class="article">
        <form method="post" class="newForm">
            <input type="text" name="titleArticle" class="title" placeholder="Title">
            <textarea name="contentArticle" id="" cols="30" rows="10"></textarea>
            <input type="text" name="articleAuthor" class="title" placeholder="Author">
            <select name="typeArticle">
                <option value="sport">sport</option>
                <option value="culture">culture</option>
                <option value="cinema">cinema</option>
            </select>
            <input type="submit" value="Post" class="submit">
        </form>
    </div>
</div>
</body>
</html>
