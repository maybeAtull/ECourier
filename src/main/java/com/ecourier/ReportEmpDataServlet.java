package com.ecourier;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ReportEmpDataServlet")
public class ReportEmpDataServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Employee> emps = new ArrayList<>();
        
        try (Connection connection = DBConnectivity.getConnection()) {
            String query = "SELECT name, email, password, phone, address FROM employee";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query);
                ResultSet resultSet = preparedStatement.executeQuery()) {

                while (resultSet.next()) {
                    Employee emp = new Employee();
                    emp.setName(resultSet.getString("name"));
                    emp.setEmail(resultSet.getString("email"));
                    emp.setPassword(resultSet.getString("password"));
                    emp.setPhone(resultSet.getString("phone"));
                    emp.setAddress(resultSet.getString("address"));

                    emps.add(emp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        // Convert the list to JSON
        String json = getJsonString(emps);

        // Set response content type to JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Send JSON response back to the client
        try (PrintWriter out = response.getWriter()) {
            out.write(json);
        }
    }

    private String getJsonString(List<Employee> employees) {
        // Convert the list to JSON (you can use a library like Jackson for this)
        // Example: Using a StringBuilder for simplicity
        StringBuilder json = new StringBuilder("[");
        for (Employee employee : employees) {
            json.append("{");
            json.append("\"name\":\"").append(employee.getName()).append("\",");
            json.append("\"email\":\"").append(employee.getEmail()).append("\",");
            json.append("\"password\":\"").append(employee.getPassword()).append("\",");
            json.append("\"phone\":\"").append(employee.getPhone()).append("\",");
            json.append("\"address\":\"").append(employee.getAddress()).append("\"");
            json.append("},");
        }
        if (!employees.isEmpty()) {
            json.deleteCharAt(json.length() - 1); // Remove the last comma
        }
        json.append("]");
        return json.toString();
    }
}
