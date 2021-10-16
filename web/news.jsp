<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Post" %><%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 16.10.2021
  Time: 15:45
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
    <title>Title</title>
</head>
<body>
<div class="container">
    <header class="header">
        <div class="heading">
            <div class="row justify-content-start align-items-center">
                <div class="col-lg-2">
                    <a href="#" class="logo">
                        NEWS.COM
                    </a>
                </div>
                <div class="col-lg-5">
                    <ul class="nav">
                        <li class="nav-item"><a href="allnews" class="nav-link">All News</a></li>
                        <li class="nav-item"><a href="culture" class="nav-link">Culture News</a></li>
                        <li class="nav-item"><a href="sport" class="nav-link">Sport News</a></li>
                        <li class="nav-item"><a href="cinema" class="nav-link">Cinema News</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 ms-auto text-end">
                    <a href="newpost" class="search__button">Add news</a>
                    <input type="text" placeholder="Search" class="search__input">
                    <a href="#" class="search__button">Search</a>
                </div>
            </div>
        </div>
    </header>
    <div class="content">
        <div class="row">
            <div class="col">
                <%
                    ArrayList<Post> posts = (ArrayList<Post>) request.getAttribute("posts");
                    for (Post post : posts) {
                        out.println("<div class=\"article__item\">");
                        out.println("<h2 class=\"article__title\">" + post.getTitle() + "</h2>");
                        out.println("<p class=\"article__text\">" + post.getContent() + "</p>");
                        out.println("<p class=\"article__author\">Author: <span>" + post.getAuthor() + "</span></p>");
                        out.println("</div>");
                    }
                %>
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
</body>
</html>
