package com.ajmul.online.shopping.model;
// Generated Nov 20, 2018 3:22:38 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * User generated by hbm2java
 */
@Entity
//@Table(name = "user", catalog = "project36"
//)
public class User implements java.io.Serializable {

    @Id
    private String emailid;
    @Column
    private String phone;
    @Column
    private String username;
    @Transient
    String password;
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmailid() {
        return this.emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

}
