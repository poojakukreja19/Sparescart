package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sparescart.dao.CategoryDAO;
import com.niit.sparescart.dao.ProductDAO;
import com.niit.sparescart.dao.SupplierDAO;
import com.niit.sparescart.domain.Category;
import com.niit.sparescart.domain.Product;
import com.niit.sparescart.domain.Supplier;
import com.niit.sparescart.domain.User;

@Controller
public class AdminController {
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Supplier supplier;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;	

	@Autowired
    CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	
	
	@RequestMapping("/manage_categories")
	public ModelAndView manageCategories()
	{
		System.out.println("manage categories");
		ModelAndView mv = new ModelAndView("/Admin/AdminHome");
		mv.addObject("isUserClickedCategories", "true");
				
		//showing list all from category table
		List<Category> categoryList = categoryDAO.getallCategories();
		mv.addObject("categoryList", categoryList);
		mv.addObject("category", category); //to access category domain object in category.jsp
		return mv;
	}
	@RequestMapping("/manage_products")
	public ModelAndView manageProducts()
	{
		System.out.println("manage products");
		ModelAndView mv = new ModelAndView("/Admin/AdminHome");
		mv.addObject("isUserClickedProducts", "true");	
		
		List<Product> productList = productDAO.getallProducts();
		mv.addObject("productList", productList);
		mv.addObject("product", product);
		return mv;
	}
	@RequestMapping("/manage_suppliers")
	public ModelAndView manageSuppliers()
	{
		System.out.println("manage suppliers");
		ModelAndView mv = new ModelAndView("/Admin/AdminHome");
		mv.addObject("isUserClickedSuppliers", "true");
		
		//showing list all from category table
			
	  List<Supplier> supplierList = supplierDAO.list();
		mv.addObject("supplierList", supplierList);
		mv.addObject("supplier", supplier);
	        	return mv;
	}
	
}
