/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Round-36
 */
@Entity
public class ConfirmSale {
   @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int saleid;
    @Column
    int orderid;
    @Column
    Date deleverydate = new Date();
    @Column
    String salestatus = "ordered";  

    public int getSaleid() {
        return saleid;
    }

    public void setSaleid(int saleid) {
        this.saleid = saleid;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public Date getDeleverydate() {
        return deleverydate;
    }

    public void setDeleverydate(Date deleverydate) {
        this.deleverydate = deleverydate;
    }

    public String getSalestatus() {
        return salestatus;
    }

    public void setSalestatus(String salestatus) {
        this.salestatus = salestatus;
    }
    
    
}
