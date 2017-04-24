package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sparescart.dao.ProductDAO;
import com.niit.sparescart.dao.UserDAO;
import com.niit.sparescart.domain.Product;
import com.niit.sparescart.domain.User;

@Controller
public class HelloController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
    private User user;	
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Product product;
	
	@Autowired
	private HttpSession session;	
	
	@RequestMapping(value= "/", method = RequestMethod.GET)
	public ModelAndView ShowHomePage()
	{
		System.out.println("Welcome to home page");
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("msg", "Welcome to shopping cart");
		mv.addObject("isAdmin","false");
		return mv;
	}
	
	//@RequestMapping("/login")
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView ShowLoginPage()
	{
		System.out.println("Welcome to login page");
		ModelAndView mv = new ModelAndView("/Login");
		mv.addObject("Isuserclickedlogin", "true");
	//	session.setAttribute("userid",id);
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView Showregistration()
	{
		System.out.println("clicked a register page");
		ModelAndView mv = new ModelAndView("/Register");
		mv.addObject("Isuserclickedregister", "true");
		return mv;
	}
	
	@RequestMapping("/mycart")
	public ModelAndView Showmycart()
	{
		System.out.println("clicked a mycart page");
		ModelAndView mv = new ModelAndView("/MyCart");
		mv.addObject("Isuserclickedmycart", "true");
		return mv;
	}
	

	@RequestMapping("/contact")
	public ModelAndView Showcontact()
	{
		System.out.println("clicked a contact page");
		ModelAndView mv = new ModelAndView("/Contact");
		mv.addObject("Isuserclickedcontact", "true");
		return mv;
	}
//	@RequestMapping("/validate")
//	public  ModelAndView ValidateCredentials(@RequestParam("username")String id,@RequestParam("password")String p)
//	{
//	ModelAndView mv	 = new ModelAndView("/index");
//	mv.addObject("isUserLoggedIn", "false");
//    if(userDAO.validate(id, p)==true)
//	{
//    	//credentials are correct
//    	mv.addObject("isUserLoggedIn", "true");
//
//    	user=userDAO.getUserByID(id);
//    	if(user.getRole().equals("ROLE_ADMIN"))
//    	{
//    	mv.addObject("isAdmin", "true");
//    	}
//	
//    else
//    {
//    	mv.addObject("","false");
//    }
//    	
//		mv.addObject("successmessage", "Valid Credentials");
//		session.setAttribute("loginmessage", "welcome:"+id);
//		session.setAttribute("id", id);
//	}
//	else
//	{
//		mv.addObject("errormessage", "Invalid credentials...plz try again");
//	}
//	return mv;
//	}
	
//	@GetMapping("/login")
//	public  ModelAndView ValidateCredentials(@RequestParam("username")String id,@RequestParam("password")String p)
//	{
//	ModelAndView mv	 = new ModelAndView("/Login");
//	
//   	 mv.addObject("isUserLoggedIn", "true");
//    	
//		mv.addObject("successmessage", "Valid Credentials");
//		session.setAttribute("loginmessage", "welcome:"+id);
//		System.out.println(id+"==========");
//		session.setAttribute("userid", id);
//	
	
//	return mv;
//	}
//	
	@RequestMapping("/logout")
	public ModelAndView Logout()
	{
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("not empty loginmessage", "true");
		session.removeAttribute("loginmessage");
		return mv;
	}
}




