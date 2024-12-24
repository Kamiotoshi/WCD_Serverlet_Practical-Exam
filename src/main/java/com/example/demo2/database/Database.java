package com.example.demo2.database;

import java.sql.*;

public class Database {
    private final String connectionString = "jdbc:mysql://localhost:3306/player_evaluation";
    private final String user = "root";
    private final String password = "root";
    private final String driver = "com.mysql.cj.jdbc.Driver";

    // singleton pattern
    private static Database _instance;
    private Connection conn;
    private Database(){
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(connectionString,user,password);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    public static Database createInstance(){
        if(_instance == null)
            _instance = new Database();
        return _instance;
    }

    public Statement getStatement() throws SQLException {
        return conn.createStatement();
    }
    public PreparedStatement getPreparedStatement(String sql) throws SQLException{
        return conn.prepareStatement(sql);
    }
}
