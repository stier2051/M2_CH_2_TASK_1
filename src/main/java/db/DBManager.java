package db;

import model.Post;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DBManager {
    public static Connection conn;

    public static void connectToDb() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/news_portal?useUnicode=true&serverTimezone=UTC", "root", "");
            System.out.println("CONNECTED SUCCESSFULLY");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void addPost(Post post) {
        try {
            PreparedStatement st = conn.prepareStatement("insert into news(title, content, author, category) value(?,?,?,?)");
            st.setString(1, post.getTitle());
            st.setString(2, post.getContent());
            st.setString(3, post.getAuthor());
            st.setString(4, post.getCategory());
            st.executeUpdate();
            System.out.println("Post successfully added");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<Post> getPosts(String category) {
        List<Post> posts = new ArrayList<>();
        try {
            PreparedStatement st = conn.prepareStatement("select * from news where category = ?");
            st.setString(1, category);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String postTitle = rs.getString("title");
                String postContent = rs.getString("content");
                String postAuthor = rs.getString("author");
                posts.add(new Post(postTitle, postContent, postAuthor, category));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return posts;
    }

    public static List<Post> getAllPosts() {
        List<Post> posts = new ArrayList<>();
        try {
            PreparedStatement st = conn.prepareStatement("select * from news");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String postTitle = rs.getString("title");
                String postContent = rs.getString("content");
                String postAuthor = rs.getString("author");
                String postCategory = rs.getString("category");
                posts.add(new Post(postTitle, postContent, postAuthor, postCategory));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return posts;
    }
}
