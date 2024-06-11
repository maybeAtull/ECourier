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

@WebServlet("/ReportParcelDataServlet")
public class ReportParcelDataServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Parcel> pars = new ArrayList<>();
        
        try (Connection connection = DBConnectivity.getConnection()) {
            String query = "SELECT senderName, senderPhone, senderAddress, recName, recPhone, recAddress, parcelType, parcelWeight, totprc, payment FROM parcels";
            
            try (PreparedStatement preparedStatement = connection.prepareStatement(query);
                 ResultSet resultSet = preparedStatement.executeQuery()) {

                while (resultSet.next()) {
                    Parcel par = new Parcel();
                    par.setSenderName(resultSet.getString("senderName"));
                    par.setSenderPhone(resultSet.getString("senderPhone"));
                    par.setSenderAddress(resultSet.getString("senderAddress"));
                    par.setReceiverName(resultSet.getString("recName"));
                    par.setReceiverPhone(resultSet.getString("recPhone"));
                    par.setReceiverAddress(resultSet.getString("recAddress"));
                    par.setParcelType(resultSet.getString("parcelType"));
                    par.setParcelWeight(resultSet.getString("parcelWeight"));
                    par.setTotalPrice(resultSet.getString("totprc"));
                    par.setPayment(resultSet.getString("payment"));

                    pars.add(par);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        // Convert the list to JSON
        String json = getJsonString(pars);

        // Set response content type to JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Send JSON response back to the client
        try (PrintWriter out = response.getWriter()) {
            out.write(json);
        }
    }

    private String getJsonString(List<Parcel> parcels) {
        // Convert the list to JSON (you can use a library like Jackson for this)
        // Example: Using a StringBuilder for simplicity
        StringBuilder json = new StringBuilder("[");
        for (Parcel parcel : parcels) {
            json.append("{");
            json.append("\"senderName\":\"").append(parcel.getSenderName()).append("\",");
            json.append("\"senderPhone\":\"").append(parcel.getSenderPhone()).append("\",");
            json.append("\"senderAddress\":\"").append(parcel.getSenderAddress()).append("\",");
            json.append("\"receiverName\":\"").append(parcel.getReceiverName()).append("\",");
            json.append("\"receiverPhone\":\"").append(parcel.getReceiverPhone()).append("\",");
            json.append("\"receiverAddress\":\"").append(parcel.getReceiverAddress()).append("\",");
            json.append("\"parcelType\":\"").append(parcel.getParcelType()).append("\",");
            json.append("\"parcelWeight\":\"").append(parcel.getParcelWeight()).append("\",");
            json.append("\"totalPrice\":\"").append(parcel.getTotalPrice()).append("\",");
            json.append("\"payment\":\"").append(parcel.getPayment()).append("\"");
            json.append("},");
        }
        if (!parcels.isEmpty()) {
            json.deleteCharAt(json.length() - 1); // Remove the last comma
        }
        json.append("]");
        return json.toString();
    }
}
