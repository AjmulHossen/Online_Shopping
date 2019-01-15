/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.daoimpl;

import com.ajmul.online.shopping.dao.ProductSaleService;

import com.ajmul.online.shopping.model.ProductSale;
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
public class ProductSaleServiceImpl implements ProductSaleService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertProductOrder(ProductSale order_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(order_id);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateProductOrder(int order_id, ProductSale order) {
        return null;
    }

    @Override
    public String deleteProductOrder(int order_id) {
        return null;
    }

    public String viewProductsale() {
              Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<ProductSale> salelist = s.createQuery("from ProductSale").list();
        Gson g = new Gson();
        String salelistgson = g.toJson(salelist);
        t.commit();
        s.close();
        return salelistgson;
    }

    @Override
    public ProductSale viewOneProductOrder(int order_id) {
              return null;
    }

    @Override
    public String viewsale() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
