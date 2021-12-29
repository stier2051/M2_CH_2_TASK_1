package servlets;

import db.DBManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "News", value = "/news")
public class News extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String newsCategory = request.getParameter("newsCategory");
        DBManager.connectToDb();
        request.setAttribute("posts", DBManager.getPosts(newsCategory));
        request.getRequestDispatcher("/news.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
