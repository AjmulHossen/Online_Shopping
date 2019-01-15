package com.ajmul.online.shopping.daoimpl;

import com.ajmul.online.shopping.dao.ProductService;
import com.ajmul.online.shopping.model.Product;
import com.google.gson.Gson;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductServiceImpl implements ProductService{

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertProduct(Product pm) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(pm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateProduct(int productid, Product pm) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Product oneproductobject = (Product) s.get(Product.class, productid);
        oneproductobject.setCatid(pm.getCatid());
        oneproductobject.setSupplierid(pm.getSupplierid());
        oneproductobject.setProductname(pm.getProductname());
        oneproductobject.setProductprice(pm.getProductprice());
        oneproductobject.setProductquantity(pm.getProductquantity());
        oneproductobject.setPurchasedate(pm.getPurchasedate());
        oneproductobject.setSaleprice(pm.getSaleprice());
        s.update(oneproductobject);
        t.commit();
        s.close();
        return null;
    }
     @Override
    public String deleteProduct(int productid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Product pm = (Product) s.get(Product.class, productid);
        s.delete(pm);
        t.commit();
        s.close();
        return null;
    }
      @Override
    public String viewProduct() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Product> productslist = s.createQuery("from Product").list();
        Gson g = new Gson();
        String productslistgson = g.toJson(productslist);
        t.commit();
        s.close();
        return productslistgson;
    }
    @Override
    public Product viewOneProduct(int productid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Product pm = (Product) s.get(Product.class, productid);
        t.commit();
        s.close();
        return pm;
    }

}
