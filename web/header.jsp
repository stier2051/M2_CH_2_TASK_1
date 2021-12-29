<%--
  Created by IntelliJ IDEA.
  User: alexa
  Date: 29.12.2021
  Time: 09:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header class="header">
    <div class="heading">
        <div class="row justify-content-start align-items-center">
            <div class="col-lg-2">
                <a href="main" class="logo">
                    NEWS.COM
                </a>
            </div>
            <div class="col-lg-5">
                <ul class="nav">
                    <li class="nav-item"><a href="main" class="nav-link">All News</a></li>
                    <li class="nav-item"><a href="main?newsCategory=culture" class="nav-link">Culture News</a></li>
                    <li class="nav-item"><a href="main?newsCategory=sport" class="nav-link">Sport News</a></li>
                    <li class="nav-item"><a href="main?newsCategory=cinema" class="nav-link">Cinema News</a></li>
                </ul>
            </div>
            <div class="col-lg-5 ms-auto text-end">
                <a href="#" class="search__button" data-bs-toggle="modal" data-bs-target="#addNewPost">Add news</a>
                <input type="text" placeholder="Search" class="search__input">
                <a href="#" class="search__button">Search</a>
            </div>
        </div>
    </div>
</header>
</body>
</html>
