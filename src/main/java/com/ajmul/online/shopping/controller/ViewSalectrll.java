/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ajmul.online.shopping.controller;

import com.ajmul.online.shopping.dao.ConfirmSaleService;
import com.ajmul.online.shopping.dao.ViewProductOrderService;
import com.ajmul.online.shopping.model.ConfirmSale;
import com.ajmul.online.shopping.model.ProductSale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Sayeed Tuhin
 */

@Controller
public class ViewSalectrll {
    
    @Autowired
        ViewProductOrderService vdao;
    @Autowired
       ConfirmSaleService cs;
    
//    @RequestMapping(value = "/admin", method = RequestMethod.GET)
//   public ModelAndView showAdmin() {
//        String orderlist = vdao.viewProductOrder();
//        ModelAndView mv = new ModelAndView("admin");
//       mv.addObject("orderlist", orderlist);
//       //logger.info("End of Landingpage in home controller");
//        return mv;
//   }
//  
      
    @RequestMapping("confirm/{getpid}")
    public String confirm(@PathVariable("getpid") int pid ,  ProductSale sale) {
       int p= pid;
      cs.insert(p,sale);
         System.out.println("jfgfgjjjtj"+pid);
        return "redirect:/admin";
   } 
    
    
    
     @RequestMapping("/showsaledetail2")
    public ModelAndView showsale() {
        
        String sdetail2 = cs.viewsale();
        

        ModelAndView mv = new ModelAndView("showconfirmsale", "newsaledetail", new ProductSale());
        mv.addObject("sdetail2", sdetail2);
       
        mv.addObject("check", "true");
        return mv;
    
    
    } 
    
}
