/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.controller;

import com.ajmul.online.shopping.dao.BillingAddressService;
import com.ajmul.online.shopping.dao.OrderDetailsService;
import com.ajmul.online.shopping.dao.ProductOrderService;
import com.ajmul.online.shopping.dao.ProductService;
import com.ajmul.online.shopping.model.BillingAddress;
import com.ajmul.online.shopping.model.Cart;
import com.ajmul.online.shopping.model.OrderDetails;
import com.ajmul.online.shopping.model.Product;
import com.ajmul.online.shopping.model.ProductOrder;
import com.google.gson.Gson;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Round-36
 */
@Controller
public class InvoiceController {
    @Autowired
    BillingAddressService bdao;
    @Autowired
    ProductOrderService odao;
    @Autowired
    OrderDetailsService odetdao;
    @Autowired
    ProductService pdao;
     @RequestMapping("/generatinginvoice")
    public ModelAndView showingReceipt(@RequestParam("getaddressid") int addressid, HttpSession httpSession) {
        BillingAddress bm = (BillingAddress) bdao.viewOneBillingAddress(addressid);
        ArrayList<Cart> c = (ArrayList<Cart>) httpSession.getAttribute("usercart");
        Gson g = new Gson();
        String cartgson = g.toJson(c);
        String addressgson = g.toJson(bm);
        String currentDateTimeString = DateFormat.getDateTimeInstance().format(new Date());
        System.out.println("this is date  " + currentDateTimeString);

        ModelAndView mv = new ModelAndView("invoice");
        mv.addObject("addressobject", addressgson);
        mv.addObject("itemsincart", cartgson);
        mv.addObject("bill", "true");
        httpSession.setAttribute("addressid", addressid);
        httpSession.setAttribute("Date", currentDateTimeString);

        httpSession.setAttribute("usercart", c);
        httpSession.setAttribute("grandquantity", 0);
        return mv;
    }
     @RequestMapping("/confirmorder")
    public ModelAndView confirmOrder(@RequestParam("getaddressid") int addressid, HttpSession httpSession) {
        BillingAddress bm = (BillingAddress) bdao.viewOneBillingAddress(addressid);
        ArrayList<Cart> c = (ArrayList<Cart>) httpSession.getAttribute("usercart");
        String email = (String) httpSession.getAttribute("UserId");
        ProductOrder porder = new ProductOrder();
        porder.setUseremail(email);
        porder.setAddressid(addressid);
        odao.insertProductOrder(porder);
        ArrayList<OrderDetails> odetails = new ArrayList<OrderDetails>();
        for (Cart cart : c) {
            OrderDetails sorder = new OrderDetails();
            sorder.setOrderid(porder.getOrderid());
            sorder.setProductid(cart.getPid());
            sorder.setQuantity(cart.getQty());
            sorder.setPrice(cart.getPrice());
            odetails.add(sorder);
            // get product and update quantity
            Product p = pdao.viewOneProduct(cart.getPid());
            p.setProductquantity(p.getProductquantity()-cart.getQty());
            pdao.updateProduct(cart.getPid(), p);
            
        }
        odetdao.insertOrderDetails(odetails);
        odetails.removeAll(odetails);
        ModelAndView mv = new ModelAndView("invoice");
        mv.addObject("bill", "false");
        mv.addObject("success", "true");
        mv.addObject("orderid", porder.getOrderid());
        httpSession.setAttribute("usercart", new ArrayList<Cart>());
        httpSession.setAttribute("grandquantity", 0);
        return mv;
    }
}
