package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sparescart.dao.ProductDAO;
import com.niit.sparescart.dao.UserDAO;
import com.niit.sparescart.domain.Category;
import com.niit.sparescart.domain.Product;
import com.niit.sparescart.domain.User;

@Controller
public class UserController {
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
	
	@RequestMapping(value= "/accessDenied", method = RequestMethod.GET)

		public ModelAndView ShowaccessDenied()
		{
			System.out.println("Welcome to home page");
			ModelAndView mv = new ModelAndView("/Accessdenied");
			mv.addObject("user", "You are not authorized to access this page");
			return mv;
		}
	
	@RequestMapping(value= "/errorpage", method = RequestMethod.GET)

	public ModelAndView Showerrorpage()
	{
		System.out.println("Welcome to error page");
		ModelAndView mv = new ModelAndView("/Errorpage");
		mv.addObject("user", "You are not authorized to access this page");
		return mv;
	}
	
	@RequestMapping("/viewproducts")
	public ModelAndView Showproducts()
	{
		System.out.println("clicked a ListProducts page");
		ModelAndView mv = new ModelAndView("/ListProducts");
		mv.addObject("IsuserclickedListProducts", "true");
		List<Product> productList = productDAO.getallProducts();
		mv.addObject("productList", productList);
		mv.addObject("product", product);
		return mv;
	}  
	
	@RequestMapping(value = "/adduser", method = RequestMethod.GET)

	public ModelAndView createuser(@RequestParam("id")String id, @RequestParam("name")String name, 
			@RequestParam("password")String password,@RequestParam("mail")String mail,@RequestParam("contact")String contact)
	{
    	System.out.println("clicked a adduser page");

		user.setId(id);
		user.setName(name);
		user.setPassword(password);
		user.setContact(contact);
		user.setMail(mail);	
		user.setRole("ROLE_CUSTOMER");
		System.out.println(id +name + password + mail + contact);
		System.out.println("clicked a redirect page");
		ModelAndView mv = new ModelAndView("/Success");
		if(userDAO.save(user)==true)
		{
	    	System.out.println("clicked a save page");

			mv.addObject("message", "Successfully created the User");
		}
		else
		{
			mv.addObject("message", "Not able to delete User. please contact Administrator");
     	}
		return mv;
		
	}
}


	
	
