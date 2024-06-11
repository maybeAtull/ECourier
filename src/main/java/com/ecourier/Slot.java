package com.ecourier;

public class Slot {
    private String name;
    private String address;
    private String phone;
    private String date;
    private String time;

    // Constructors
    public Slot() {
    }

    public Slot(String name, String address, String phone, String date, String time) {
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.date = date;
        this.time = time;
    }

    // Getters and setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}

