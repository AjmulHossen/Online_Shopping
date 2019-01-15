/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.controller;

import com.ajmul.online.shopping.dao.ProductOrderService;
import com.ajmul.online.shopping.dao.ProductSaleService;
import com.ajmul.online.shopping.model.Product;
import com.ajmul.online.shopping.model.ProductOrder;
import com.ajmul.online.shopping.model.ProductSale;
import com.google.gson.Gson;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductSaleController {

    @Autowired
    ProductSaleService psso;
    @Autowired
    ProductOrderService pdodo;

    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "deleverydate", new CustomDateEditor(format, false));
    }

    @RequestMapping("/showproductSalemap")
    public ModelAndView showproductpage() {
        String productlist = pdodo.viewProductOrder();
       
        ModelAndView mv = new ModelAndView("orderlist", "ProductsaleObject", new ProductOrder());
        mv.addObject("selepro", new ProductSale());
        mv.addObject("productlists", productlist);
        System.out.println("lkjsdflkjsdflkjsdfljsdf"+productlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping("/showproductSalelist")
    public ModelAndView showsalepage() {
        String productlist = psso.viewsale();
       
        ModelAndView m = new ModelAndView("salelist", "ProductsaleObject", new ProductSale());
        m.addObject("productlists", productlist);
       
        m.addObject("check", "true");
        return m;
    }

    @RequestMapping(value = "/adingsaleproduct", params = "Add")
    public String addproductpage(@ModelAttribute("ProductsaleObject") ProductSale product) {
        psso.insertProductOrder(product);
        return "redirect:/showproductSalemap";
    }
    

   
    
}
