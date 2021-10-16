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
    <!-- Bootstrap Reboot CSS -->
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/main.css">
    <title>new post</title>
</head>
<body>
<div class="container">
    <header class="header">
        <div class="heading">
            <div class="row justify-content-start align-items-center">
                <div class="col-lg-2">
                    <a href="allnews" class="logo">
                        NEWS.COM
                    </a>
                </div>
            </div>
        </div>
    </header>
    <div class="article">
        <div class="row">
            <div class="col text-center">
                <form method="post" class="newForm">
                    <h2>Just add new post!</h2>
                    <input type="text" name="titleArticle" class="title" placeholder="Title" class="new-post">
                    <textarea name="contentArticle" id="" cols="30" rows="10"></textarea>
                    <input type="text" name="articleAuthor" class="title" placeholder="Author" class="new-post">
                    <select name="typeArticle">
                        <option value="sport">sport</option>
                        <option value="culture">culture</option>
                        <option value="cinema">cinema</option>
                    </select>
                    <input type="submit" value="Post" class="submit">
                </form>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="row align-items-center">
            <div class="col">
                <p class="footer__text">Copyright &copy 2021, All right reserved</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
