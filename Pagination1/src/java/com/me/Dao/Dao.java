/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.Dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class Dao {
    public static Connection getConnectionJDBC() throws IOException {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver missing");
        }
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost/newsalesorder","root","mansijain");
        } catch (SQLException e) {
            System.out.println("Connection Failed");
        }

        if (connection != null) {
            System.out.println("connection established");
        }
        return connection;
    }
}
