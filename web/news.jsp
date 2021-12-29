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
    <%@include file="head.jsp"%>>
</head>
<body>
<div class="container">
    <%@include file="header.jsp"%>
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

<!-- Modal add new post -->
<div class="modal fade" id="addNewPost" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add new post</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="/main" method="post">
                    <div class="input-group mb-3">
                        <span class="input-group-text">Title</span>
                        <input type="text" name="postTitle" class="form-control">
                    </div>
                    <div class="input-group mb-3">
                        <span>Content</span>
                        <textarea name="postContent" id="" cols="30" rows="10"></textarea>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">Author</span>
                        <input type="text" name="postAuthor" class="form-control">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">Category</span>
                        <select name="postCategory" class="form-select">
                            <option value="culture">culture</option>
                            <option value="sport">sport</option>
                            <option value="cinema">cinema</option>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add post</button>
                    </div>
                </form>
            </div>
            </div>
        </div>
    </div>

</body>
</html>
