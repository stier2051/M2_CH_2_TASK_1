import db.DBManager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "NewPost", value = "/NewPost")
public class NewPost extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/newPost.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBManager.connectToDb();

        String postTitle = request.getParameter("titleArticle");
        String postContent = request.getParameter("contentArticle");
        String postAuthor = request.getParameter("articleAuthor");
        String postCategory = request.getParameter("typeArticle");

        DBManager.addPost(postTitle, postContent, postAuthor, postCategory);
        request.getRequestDispatcher("/newPost.jsp").forward(request, response);
    }
}
