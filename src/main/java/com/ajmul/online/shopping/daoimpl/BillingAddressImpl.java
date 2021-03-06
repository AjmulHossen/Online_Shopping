/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.daoimpl;

import com.ajmul.online.shopping.dao.BillingAddressService;
import com.ajmul.online.shopping.model.BillingAddress;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
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
public class BillingAddressImpl implements BillingAddressService  {
    
     @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertBillingAddress(BillingAddress billingaddress) {
        Session s = sessionFactory.openSession();
        Transaction tr = s.getTransaction();
        tr.begin();
        s.save(billingaddress);
        tr.commit();
        s.close();

        return null;
    }

    @Override
    public String updateBillingAddress(int addressid, BillingAddress billingaddress) {
     Session s = sessionFactory.openSession();
        Transaction tr = s.getTransaction();
        tr.begin();
        BillingAddress bm = (BillingAddress) s.get(BillingAddress.class, addressid);

        bm.setAddressid(billingaddress.getAddressid());
        bm.setAddresslineone(billingaddress.getAddresslineone());
        bm.setAddresslinetwo(billingaddress.getAddresslinetwo());
        bm.setCountry(billingaddress.getCountry());
        bm.setCity(billingaddress.getCity());
        bm.setStatename(billingaddress.getStatename());
        bm.setPhone(billingaddress.getPhone());
        bm.setEmailid(billingaddress.getEmailid());

        s.update(bm);

        tr.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteBillingAddress(int addressid) {
       Session s = sessionFactory.openSession();
        Transaction tr = s.getTransaction();
        tr.begin();
        BillingAddress bm = (BillingAddress) s.get(BillingAddress.class, addressid);
        s.delete(bm);
        tr.commit();
        s.close();
        return null;
    }

    @Override
    public String viewBillingAddresses(String emailid) {
        Session s = sessionFactory.openSession();
        Transaction tr = s.getTransaction();
        tr.begin();
        ArrayList<BillingAddress> addressarray = new ArrayList<BillingAddress>();
        List<BillingAddress> addresslist = s.createQuery("from BillingAddress").list();
        Iterator<BillingAddress> iterator = addresslist.iterator();
        while (iterator.hasNext()) {
            BillingAddress bam = iterator.next();
            if (bam.getEmailid().equals(emailid)) {
                addressarray.add(bam);
            }
        }
        Gson gson = new Gson();
        String addressjsonlist = gson.toJson(addressarray);
        tr.commit();
        s.close();
        return addressjsonlist;
    }

    @Override
    public BillingAddress viewOneBillingAddress(int bid) {
        Session s = sessionFactory.openSession();
        Transaction tr = s.getTransaction();
        tr.begin();
        BillingAddress oneaddressobj = (BillingAddress) s.get(BillingAddress.class, bid);
        tr.commit();
        s.close();
        return oneaddressobj;
    }
    
}
