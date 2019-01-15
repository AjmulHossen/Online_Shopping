/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.dao;

import com.ajmul.online.shopping.model.ProductOrder;
import org.springframework.stereotype.Service;

/**
 *
 * @author Tuhin
 */
@Service
public interface ViewProductOrderService {
   public String updateProductOrder(int orderid, ProductOrder order);

    public String deleteProductOrder(int orderid);

    public String viewProductOrder();

    public ProductOrder viewOneProductOrder(int orderid); 
}
