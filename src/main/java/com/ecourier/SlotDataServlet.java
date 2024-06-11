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

@WebServlet("/SlotDataServlet")
public class SlotDataServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Slot> slots = new ArrayList<>();
        
        try (Connection connection = DBConnectivity.getConnection()) {
            String query = "SELECT name,address, phone, date, time FROM book_slot";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query);
                ResultSet resultSet = preparedStatement.executeQuery()) {

                while (resultSet.next()) {
                    Slot slot = new Slot();
                    slot.setName(resultSet.getString("name"));
                    slot.setAddress(resultSet.getString("address"));
                    slot.setPhone(resultSet.getString("phone"));
                    slot.setDate(resultSet.getString("date"));
                    slot.setTime(resultSet.getString("time"));

                    slots.add(slot);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        // Convert the list to JSON
        String json = getJsonString(slots);

        // Set response content type to JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Send JSON response back to the client
        try (PrintWriter out = response.getWriter()) {
            out.write(json);
        }
    }

    private String getJsonString(List<Slot> slots) {
        // Convert the list to JSON (you can use a library like Jackson for this)
        // Example: Using a StringBuilder for simplicity
        StringBuilder json = new StringBuilder("[");
        for (Slot slot : slots) {
            json.append("{");
            json.append("\"name\":\"").append(slot.getName()).append("\",");
            json.append("\"address\":\"").append(slot.getAddress()).append("\",");
            json.append("\"phone\":\"").append(slot.getPhone()).append("\",");
            json.append("\"date\":\"").append(slot.getDate()).append("\",");
            json.append("\"time\":\"").append(slot.getTime()).append("\"");
            json.append("},");
        }
        if (!slots.isEmpty()) {
            json.deleteCharAt(json.length() - 1); // Remove the last comma
        }
        json.append("]");
        return json.toString();
    }
}
