package com.Builder.model;

import java.io.PrintWriter;

public class LandlordsDetails {

    private String siteId;
    private String firstName;
    private String lastName;
    private String phone;
    private String siteLocation;
    private String district;
    private String aria;
    private String totalPayment;
    private String paymentDetailsId;
    private String userRegistrationId;
    private String date;
    private String paidDate;
    private String description;
    private String amount;
    private String amountType;
    private String remainingBalance;

    public String getPaidDate() {
        return paidDate;
    }

    public void setPaidDate(String paidDate) {
        this.paidDate = paidDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSiteId() {
        return siteId;
    }

    public void setSiteId(String siteId) {
        this.siteId = siteId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSiteLocation() {
        return siteLocation;
    }

    public void setSiteLocation(String siteLocation) {
        this.siteLocation = siteLocation;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getAria() {
        return aria;
    }

    public void setAria(String aria) {
        this.aria = aria;
    }

    public String getTotalPayment() {
        return totalPayment;
    }

    public void setTotalPayment(String totalPayment) {
        this.totalPayment = totalPayment;
    }
    public String getPaymentDetailsId() {
        return paymentDetailsId;
    }

    public void setPaymentDetailsId(String paymentDetailsId) {
        this.paymentDetailsId = paymentDetailsId;
    }

    public String getUserRegistrationId() {
        return userRegistrationId;
    }

    public void setUserRegistrationId(String userRegistrationId) {
        this.userRegistrationId = userRegistrationId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getAmountType() {
        return amountType;
    }

    public void setAmountType(String amountType) {
        this.amountType = amountType;
    }

    public String getRemainingBalance() {
        return remainingBalance;
    }

    public void setRemainingBalance(String remainingBalance) {
        this.remainingBalance = remainingBalance;
    }

    @Override
    public String toString() {
        return "LandlordsDetails{" +
                "siteId='" + siteId + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", phone='" + phone + '\'' +
                ", siteLocation='" + siteLocation + '\'' +
                ", district='" + district + '\'' +
                ", aria='" + aria + '\'' +
                ", totalPayment='" + totalPayment + '\'' +
                ", paymentDetailsId='" + paymentDetailsId + '\'' +
                ", userRegistrationId='" + userRegistrationId + '\'' +
                ", date='" + date + '\'' +
                ", paidDate='" + paidDate + '\'' +
                ", description='" + description + '\'' +
                ", amount='" + amount + '\'' +
                ", amountType='" + amountType + '\'' +
                ", remainingBalance='" + remainingBalance + '\'' +
                '}';
    }
}
