package com.ajmul.online.shopping.controller;

import com.ajmul.online.shopping.reportmodel.ReporProduvt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperReport;
import com.ajmul.online.shopping.daoimpl.JasperReportDAO;
import com.ajmul.online.shopping.reportmodel.Order;
import com.ajmul.online.shopping.reportmodel.ReportOrder;
import com.ajmul.online.shopping.reportmodel.ReportSalevt;
/**
 *
 * @author User
 */
@Controller
public class ReportController {
    
    @RequestMapping(value = "/reportView", method = RequestMethod.GET)
    public String loadSurveyPg(
            @ModelAttribute("reportInputForm") ReporProduvt reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "report";
    }
    
    @RequestMapping(value = "/reportView", method = RequestMethod.POST)
    public String generateReport(@ModelAttribute("reportInputForm") ReporProduvt reportInputForm,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "productreport";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            int pid = reportInputForm.getPid();
                        String sname = reportInputForm.getSname();

            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("pid", pid);
             hmParams.put("sname", sname);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
    
     @RequestMapping(value = "/salereportView", method = RequestMethod.GET)
    public String loadSalePg(
            @ModelAttribute("reportInputForm") ReportSalevt reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "salereportview";
    }
    
    @RequestMapping(value = "/salereportView", method = RequestMethod.POST)
    public String generateSaleReport(@ModelAttribute("reportInputForm") ReportSalevt reportInputForm,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "salereport";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            int orderid = reportInputForm.getOrderid();
                      //  String sname = reportInputForm.getSname();

            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("orderid", orderid);
            // hmParams.put("sname", sname);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
    
     
     @RequestMapping(value = "/orderreportView", method = RequestMethod.GET)
    public String loadOrderPg(
            @ModelAttribute("reportInputForm") ReportOrder reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "orderreportview";
    }
    
    @RequestMapping(value = "/orderreportView", method = RequestMethod.POST)
    public String generatOrderReport(@ModelAttribute("reportInputForm") ReportOrder reportInputForm,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "orderreport";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            String start_date = reportInputForm.getStart_date();
            String end_date = reportInputForm.getEnd_date();
                      //  String sname = reportInputForm.getSname();

            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("start_date", start_date);
            hmParams.put("end_date", end_date);
            // hmParams.put("sname", sname);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
    
   
    
    
   @RequestMapping(value = "/orderView", method = RequestMethod.GET)
    public String loadOtrderPg(
            @ModelAttribute("reportInputForm") Order reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "orderR";
    }
    
    @RequestMapping(value = "/orderView", method = RequestMethod.POST)
    public String generatOtrderReport(@ModelAttribute("reportInputForm") Order reportInputForm,HttpServletRequest request,HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "mainOrder";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
           
           
            int oid = reportInputForm.getOid();
                      //  String sname = reportInputForm.getSname();

            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("oid", oid);
           
            // hmParams.put("sname", sname);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName,request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn); 

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }  
    
    
    
    
}
