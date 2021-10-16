package db;

import model.Post;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBManager {
    public static Connection conn;
//    Post post = new Post();

    public static void connectToDb() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/news_portal?useUnicode=true&serverTimezone=UTC", "root", "");
            System.out.println("CONNECTED SUCCESSFULLY");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void addPost(String title, String content, String author, String category) {
        try{
            PreparedStatement st = conn.prepareStatement("insert into news(title, content, author, category) value(?,?,?,?)");
            st.setString(1, title);
            st.setString(2, content);
            st.setString(3, author);
            st.setString(4, category);
            st.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("Post successfully added");
    }

    public static ArrayList<Post> getAllPosts() {
        ArrayList<Post> posts = new ArrayList<>();
        try{
            PreparedStatement st = conn.prepareStatement("select * from news");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String postTitle = rs.getString("title");
                String postContent = rs.getString("content");
                String postAuthor = rs.getString("author");
                String postCategory = rs.getString("category");
                posts.add(new Post(postTitle, postContent, postAuthor, postCategory));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return posts;
    }
}
