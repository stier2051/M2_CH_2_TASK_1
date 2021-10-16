package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
    public static Connection conn;

    public static void connectToDb() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/news_portal?useUnicode=true&serverTimezone=UTC", "root", "");
            System.out.println("CONNECTED SUCCESSFULLY");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
