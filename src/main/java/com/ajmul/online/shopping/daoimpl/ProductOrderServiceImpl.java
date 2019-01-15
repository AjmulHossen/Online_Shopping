/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.daoimpl;

import com.ajmul.online.shopping.dao.ProductOrderService;
import com.ajmul.online.shopping.model.ProductOrder;
import com.google.gson.Gson;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Round-36
 */
@Repository
public class ProductOrderServiceImpl implements ProductOrderService {
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertProductOrder(ProductOrder order) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(order);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateProductOrder(int orderid, ProductOrder order) {
       return null;
    }

    @Override
    public String deleteProductOrder(int orderid) {
        return null;
    }

    @Override
    public String viewProductOrder() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<ProductOrder> productslist = s.createQuery("from ProductOrder where orderstatus='ordered'").list();
        Gson g = new Gson();
        String productslistgson = g.toJson(productslist);
        t.commit();
        s.close();
        return productslistgson;
    }

    @Override
    public ProductOrder viewOneProductOrder(int orderid) {
         return null;
    }
    
}
