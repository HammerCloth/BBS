package com.syx.model;

import java.io.Serializable;

/**
 * @author:syx
 * @date:2021/8/31 14:48
 * @version:v1.0
 */
public class User implements Serializable {
    private String username;
    private String password;
    private String sex;
    private String email;

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

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
