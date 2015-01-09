package com.onlinebazzar.controller;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.fabric.xmlrpc.base.Data;
import com.onlinebazzar.model.Report;
import com.onlinebazzar.model.Transaction;
import com.onlinebazzar.model.Vendor;
import com.onlinebazzar.services.TransactionService;
import com.onlinebazzar.services.VendorService;



@Controller
@RequestMapping("/report/")
public class ReportController {

	private static final Logger logger = Logger
			.getLogger(ReportController.class);

	@Autowired
	private VendorService vendorService;
	
	@Autowired
	private TransactionService transactionService;
	

	@RequestMapping(method = RequestMethod.GET, value = "/vendor_list_report/pdf")
	public ModelAndView generateCountryListPdfReport(HttpServletResponse res, ModelAndView modelAndView,
			@RequestParam("type") String type,@RequestParam("fromdate") String fromDate,@RequestParam("todate") String toDate) {
		System.out.println("Printing Report");

		Map<String, Object> parameterMap = new HashMap<String, Object>();

		List<Transaction> transactionList = transactionService.findAll();
		if(transactionList==null || transactionList.size()==0){
			parameterMap.put("errorMessage", "Invalid File or format please upload  Services and PeakTimes XLS File");
			modelAndView = new ModelAndView("errorPage", parameterMap);
			return modelAndView;
		}
		
//		if(type.equals("Daily"))
//			
//		else if(type.equals("Weekly"))

		JRDataSource JRdataSource = new JRBeanCollectionDataSource(
				transactionList);
		
		Double amount = 0.0;
		Double profit = 0.0;
		for(Transaction trans : transactionList){
			amount += trans.getPrice();
			if(trans.getAccountNumber().equals("1111111111111111"))
				profit+=trans.getPrice();
		}

		parameterMap.put("datasource", JRdataSource);
		parameterMap.put("fromDate",fromDate);
		parameterMap.put("toDate", toDate);
		parameterMap.put("amount", amount.toString());
		parameterMap.put("profit", profit.toString());
		modelAndView = new ModelAndView("vendorListPdfReport", parameterMap);

		return modelAndView;
	}
	
	
	
	@RequestMapping(method = RequestMethod.GET, value = "/test")
	public String generateDailyPdfReport(Model model) {
		System.out.println("Printing test");

//		Map<String, Object> parameterMap = new HashMap<String, Object>();
//        //req.getParameter(name)
//		List<Transaction> transactionList = transactionService.findAll();
//		if(transactionList==null || transactionList.size()==0){
//			parameterMap.put("errorMessage", "Invalid File or format please upload  Services and PeakTimes XLS File");
//			modelAndView = new ModelAndView("errorPage", parameterMap);
//			return modelAndView;
//		}
//
//		JRDataSource JRdataSource = new JRBeanCollectionDataSource(
//				transactionList);
//		
//		Double amount = 0.0;
//		Double profit = 0.0;
//		for(Transaction trans : transactionList){
//			amount += trans.getPrice();
//			if(trans.getAccountNumber().equals("1111111111111111"))
//				profit+=trans.getPrice();
//		}
//
//		parameterMap.put("datasource", JRdataSource);
//		parameterMap.put("fromDate","From Date");
//		parameterMap.put("toDate", "To Date");
//		parameterMap.put("amount", amount.toString());
//		parameterMap.put("profit", profit.toString());
//		modelAndView = new ModelAndView("vendorListPdfReport", parameterMap);
//

		return "report/report";
	}	
	
	
	

	@RequestMapping(method = RequestMethod.GET, value = "/order_list_weekly_report/pdf")
	public ModelAndView generateWeeklyPdfReport(HttpServletResponse res, ModelAndView modelAndView,
			@RequestParam("type") String type,@RequestParam("fromDate") String fromDate,@RequestParam("toDate") String toDate) {
		System.out.println("Printing Report");

		Map<String, Object> parameterMap = new HashMap<String, Object>();

		List<Transaction> transactionList = transactionService.findAll();
		if(transactionList==null || transactionList.size()==0){
			parameterMap.put("errorMessage", "Invalid File or format please upload  Services and PeakTimes XLS File");
			modelAndView = new ModelAndView("errorPage", parameterMap);
			return modelAndView;
		}

		JRDataSource JRdataSource = new JRBeanCollectionDataSource(
				transactionList);
		
		Double amount = 0.0;
		Double profit = 0.0;
		for(Transaction trans : transactionList){
			amount += trans.getPrice();
			if(trans.getAccountNumber().equals("1111111111111111"))
				profit+=trans.getPrice();
		}

		parameterMap.put("datasource", JRdataSource);
		parameterMap.put("fromDate",fromDate);
		parameterMap.put("toDate", toDate);
		parameterMap.put("amount", amount.toString());
		parameterMap.put("profit", profit.toString());
		modelAndView = new ModelAndView("vendorListPdfReport", parameterMap);

		return modelAndView;
	}
	
	
	

	@RequestMapping(method = RequestMethod.GET, value = "/order_list_monthly_report/pdf")
	public ModelAndView generateMonthlyPdfReport(HttpServletResponse res, ModelAndView modelAndView) {
		System.out.println("Printing Report");

		Map<String, Object> parameterMap = new HashMap<String, Object>();

		List<Transaction> transactionList = transactionService.findAll();
		if(transactionList==null || transactionList.size()==0){
			parameterMap.put("errorMessage", "Invalid File or format please upload  Services and PeakTimes XLS File");
			modelAndView = new ModelAndView("errorPage", parameterMap);
			return modelAndView;
		}

		JRDataSource JRdataSource = new JRBeanCollectionDataSource(
				transactionList);
		
		Double amount = 0.0;
		Double profit = 0.0;
		for(Transaction trans : transactionList){
			amount += trans.getPrice();
			if(trans.getAccountNumber().equals("1111111111111111"))
				profit+=trans.getPrice();
		}

		parameterMap.put("datasource", JRdataSource);
		parameterMap.put("fromDate","From Date");
		parameterMap.put("toDate", "To Date");
		parameterMap.put("amount", amount.toString());
		parameterMap.put("profit", profit.toString());
		modelAndView = new ModelAndView("vendorListPdfReport", parameterMap);

		return modelAndView;
	}
	

	@RequestMapping(method = RequestMethod.GET, value = "/order_list_yearly_report/pdf")
	public ModelAndView generateYearlyPdfReport(HttpServletResponse res, ModelAndView modelAndView) {
		System.out.println("Printing Report");

		Map<String, Object> parameterMap = new HashMap<String, Object>();

		List<Transaction> transactionList = transactionService.findAll();
		if(transactionList==null || transactionList.size()==0){
			parameterMap.put("errorMessage", "Invalid File or format please upload  Services and PeakTimes XLS File");
			modelAndView = new ModelAndView("errorPage", parameterMap);
			return modelAndView;
		}

		JRDataSource JRdataSource = new JRBeanCollectionDataSource(
				transactionList);
		
		Double amount = 0.0;
		Double profit = 0.0;
		for(Transaction trans : transactionList){
			amount += trans.getPrice();
			if(trans.getAccountNumber().equals("1111111111111111"))
				profit+=trans.getPrice();
		}

		parameterMap.put("datasource", JRdataSource);
		parameterMap.put("fromDate","From Date");
		parameterMap.put("toDate", "To Date");
		parameterMap.put("amount", amount.toString());
		parameterMap.put("profit", profit.toString());
		modelAndView = new ModelAndView("vendorListPdfReport", parameterMap);

		return modelAndView;
	}
	
}