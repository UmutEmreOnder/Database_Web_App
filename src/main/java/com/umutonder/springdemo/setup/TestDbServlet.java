package com.umutonder.springdemo.setup;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet(name = "TestDbServlet", value = "/test-db-servlet")
public class TestDbServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "jdbc:mysql://localhost:3306/web_customer_tracker";
        String name = "springstudent";
        String password = "springstudent";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, name, password);
            response.getWriter().println("Success!");
        } catch (SQLException e) {
            response.getWriter().println("Error!");
        } catch (ClassNotFoundException e) {
            response.getWriter().println("Driver Not Found!");
        }
    }
}
