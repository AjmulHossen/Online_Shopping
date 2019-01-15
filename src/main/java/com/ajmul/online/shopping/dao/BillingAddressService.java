/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.dao;

import com.ajmul.online.shopping.model.BillingAddress;
import org.springframework.stereotype.Service;

/**
 *
 * @author Round-36
 */
@Service
public interface BillingAddressService {
  public String insertBillingAddress(BillingAddress billingaddress);

    public String updateBillingAddress(int addressid, BillingAddress billingaddress);

    public String deleteBillingAddress(int addressid);

    public String viewBillingAddresses(String emailid);

    public BillingAddress viewOneBillingAddress(int bid);  
}
