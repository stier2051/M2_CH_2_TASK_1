package servlets;

import db.DBManager;
import model.Post;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/main")
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String newsCategory = request.getParameter("newsCategory");
        DBManager.connectToDb();
        if (newsCategory == null) {
            request.setAttribute("posts", DBManager.getAllPosts());
        } else {
            request.setAttribute("posts", DBManager.getPosts(newsCategory));
        }
        request.getRequestDispatcher("/news.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String postTitle = request.getParameter("postTitle");
        String postContent = request.getParameter("postContent");
        String postAuthor = request.getParameter("postAuthor");
        String postCategory = request.getParameter("postCategory");
        DBManager.addPost(new Post(postTitle, postContent, postAuthor, postCategory));
        request.setAttribute("posts", DBManager.getAllPosts());
        request.getRequestDispatcher("/news.jsp").forward(request, response);
    }
}
