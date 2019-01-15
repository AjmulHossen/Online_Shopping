/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.dao;

import com.ajmul.online.shopping.model.ProductSale;
import org.springframework.stereotype.Service;

/**
 *
 * @author Round-36
 */
@Service
public interface ConfirmSaleService {
    public String insertProductOrder(ProductSale order_id);

    public String updateProductOrder(int order_id, ProductSale order);

    public String deleteProductOrder(int order_id);

    public String viewsale();

    public ProductSale viewOneProductOrder(int order_id);
     public String insert(int order_id, ProductSale order);
}
