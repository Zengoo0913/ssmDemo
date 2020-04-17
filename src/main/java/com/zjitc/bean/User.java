package com.zjitc.bean;

import org.springframework.stereotype.Component;

@Component
public class User{

    private int uId;
    private String username;
    private String password;
    private String uName;
    private String uSex;
    private String uAge;
    private String uDev;
    private String uLev;

    public User() {
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(String username, String password, String uName, String uSex, String uAge, String uDev, String uLev) {
        this.username = username;
        this.password = password;
        this.uName = uName;
        this.uSex = uSex;
        this.uAge = uAge;
        this.uDev = uDev;
        this.uLev = uLev;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuSex() {
        return uSex;
    }

    public void setuSex(String uSex) {
        this.uSex = uSex;
    }

    public String getuAge() {
        return uAge;
    }

    public void setuAge(String uAge) {
        this.uAge = uAge;
    }

    public String getuDev() {
        return uDev;
    }

    public void setuDev(String uDev) {
        this.uDev = uDev;
    }

    public String getuLev() {
        return uLev;
    }

    public void setuLev(String uLev) {
        this.uLev = uLev;
    }

    @Override
    public String
    toString() {
        return "User{" +
                "uId=" + uId +
                ", userName='" + username + '\'' +
                ", password='" + password + '\'' +
                ", uNmae='" + uName + '\'' +
                ", uSex='" + uSex + '\'' +
                ", uAge='" + uAge + '\'' +
                ", uDev='" + uDev + '\'' +
                ", uLev='" + uLev + '\'' +
                '}';
    }
}
