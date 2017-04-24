package com.niit.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sparescart.dao.CartDAO;
import com.niit.sparescart.dao.OderDetailDAO;
import com.niit.sparescart.dao.ProductDAO;
import com.niit.sparescart.dao.UserDAO;
import com.niit.sparescart.domain.Cart;
import com.niit.sparescart.domain.Category;
import com.niit.sparescart.domain.OrderDetail;
import com.niit.sparescart.domain.Product;
import com.niit.sparescart.domain.User;

@Controller
public class CartController {

	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	Cart cart;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	OrderDetail orderDetail;
	
	@Autowired
	OderDetailDAO orderDetailDAO;
	
	@Autowired
	private HttpSession session;	
	
	private Date orderDate;

	private float amount;

	@RequestMapping("/addtocart")
	public ModelAndView Addtocart(@RequestParam("id")String id, @RequestParam("name")String name, 
			@RequestParam("price")float price, @RequestParam("description")String description, 
			@RequestParam("quantity")int quantity)
	{
		ModelAndView mv = new ModelAndView("redirect:/viewcart");
		
		product=productDAO.getProductByID(id);
		//String userid=session.getAttribute(id);
		user=userDAO.getUserByID("niit");
		
		orderDetail.setId(0);
		orderDetail.setPrice(price);
		orderDate = new Date();
		orderDetail.setOrderDate(orderDate);
		orderDetail.setPrice(price);
		orderDetail.setProduct(product);
		
		orderDetail.setQuantity(quantity);
		float amount=price*quantity;
		orderDetail.setAmount(amount);
		cart=cartDAO.getcartById("niit");
		if(cart!=null)
		{
			orderDetail.setCart(cart);
			orderDetailDAO.saveorderDetail(orderDetail);
		}
		else
		{
            cart= new Cart();
			cart.setId("niit");
			cart.setUser(user);
			cart.setCustomerAddress("");
			cart.setCustomerEmail("");
			cart.setCustomerName("");
			cart.setCustomerPhone(0);
			cartDAO.savecart(cart);
			orderDetail.setCart(cart);
		orderDetailDAO.saveorderDetail(orderDetail);
		}
			return mv;
	}
	
	@RequestMapping("/viewcart")
	public ModelAndView ShoworderDetail()
	{
		System.out.println("clicked a mycart page");
		ModelAndView mv = new ModelAndView("/MyCart");
    	mv.addObject("Isuserclickedmycart", "true");
		List<OrderDetail> orderDetailList = orderDetailDAO.getorderDetailbyID("niit");
		mv.addObject("orderDetailList", orderDetailList);
		mv.addObject("orderDetail", orderDetail); 
		return mv;
	}
	
	@GetMapping("/orderdelete/{id}")
	public ModelAndView orderdelete(@PathVariable("id") int id)//showing path on url
	{
		ModelAndView mv = new ModelAndView("redirect:/viewcart");
		if(orderDetailDAO.deleteorderDetailById(id))
		{
			mv.addObject("message", "Successfully delete the Order");
		}
		else
		{
			mv.addObject("message", "Not able to delete Order. please contact Administrator");
		}
		return mv;
	}
	@RequestMapping("/cart_checkout")
	public ModelAndView Showcartcheckout()
	{
		System.out.println("clicked a checkout page");
		ModelAndView mv = new ModelAndView("/MyCart");
    	mv.addObject("Isuserclickedcheckout", "true");
		
		return mv;
	}
}
	
		
	
