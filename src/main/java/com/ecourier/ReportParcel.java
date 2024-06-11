package com.ecourier;

public class ReportParcel {
    private String sendername;
    private String senderaddress;
    private String senderphone;

    private String receivername;
    private String receiveraddress;
    private String receiverphone;

    private String parcelType;
    private String parcelWeight;
    private String totalPrice;
    private String payment;

    // Constructors
    public ReportParcel() {
    }

    public ReportParcel(String sendername, String senderaddress, String senderphone, String receivername, String receiveraddress, String receiverphone, String parcelType,
                  String parcelWeight, String totalPrice, String payment) {
        this.sendername = sendername;
        this.senderaddress = senderaddress;
        this.senderphone = senderphone;

        this.receivername = receivername;
        this.receiveraddress = receiveraddress;
        this.receiverphone = receiverphone;

        this.parcelType = parcelType;
        this.parcelWeight = parcelWeight;
        this.totalPrice = totalPrice;
        this.payment = payment;
    }

    // Getters and setters
    public String getSenderName() {
        return sendername;
    }

    public void setSenderName(String sendername) {
        this.sendername = sendername;
    }

    public String getSenderAddress() {
        return senderaddress;
    }

    public void setSenderAddress(String senderaddress) {
        this.senderaddress = senderaddress;
    }

    public String getSenderPhone() {
        return senderphone;
    }

    public void setSenderPhone(String senderphone) {
        this.senderphone = senderphone;
    }

    public String getReceiverName() {
        return receivername;
    }

    public void setReceiverName(String receivername) {
        this.receivername = receivername;
    }

    public String getReceiverAddress() {
        return receiveraddress;
    }

    public void setReceiverAddress(String receiveraddress) {
        this.receiveraddress = receiveraddress;
    }

    public String getReceiverPhone() {
        return receiverphone;
    }

    public void setReceiverPhone(String receiverphone) {
        this.receiverphone = receiverphone;
    }

    public String getParcelType() {
        return parcelType;
    }

    public void setParcelType(String parcelType) {
        this.parcelType = parcelType;
    }

    public String getParcelWeight() {
        return parcelWeight;
    }

    public void setParcelWeight(String parcelWeight) {
        this.parcelWeight = parcelWeight;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }
}
