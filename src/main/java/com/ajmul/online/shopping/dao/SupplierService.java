/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.dao;

import com.ajmul.online.shopping.model.Supplier;
import org.springframework.stereotype.Service;

/**
 *
 * @author R-36
 */
@Service
public interface SupplierService {
    public String insertSupplier(Supplier sm);

    public String updateSupplier(Supplier sm);

    public String deleteSupplier(String id);

    public String viewSupplier();

    public Supplier viewOneSupplier(String id);
    
}
