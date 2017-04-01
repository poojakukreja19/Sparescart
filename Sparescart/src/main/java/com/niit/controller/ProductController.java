package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sparescart.dao.ProductDAO;
import com.niit.sparescart.domain.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	@PostMapping("/manage_products_create")
	public ModelAndView createProduct(@RequestParam("id")String id, @RequestParam("name")String name, @RequestParam("price")String price, 
			@RequestParam("description")String description)
	{
		product.setId(id);
		product.setName(name);
		product.setPrice(price);
		product.setDescription(description);
		ModelAndView mv = new ModelAndView("redirect:/manage_products");
		if(productDAO.save(product))
		{
			mv.addObject("message", "Successfully created the Category");
		}
		else
		{
			mv.addObject("message", "Not able to create Category. please contact Administrator");
		}
		return mv;
		
	}
	
	@GetMapping("/manage_products_delete/{id}")
	public ModelAndView deleteProduct(@PathVariable("id") String id)//showing path on url
	{
		ModelAndView mv = new ModelAndView("redirect:/manage_products");
		if(productDAO.deleteById(id))
		{
			mv.addObject("message", "Successfully delete the product");
		}
		else
		{
			mv.addObject("message", "Not able to delete product. please contact Administrator");
		}
		return mv;
	}
	
	@GetMapping("/manage_products_edit/{id}")
	public ModelAndView updateProduct(@PathVariable("id")String id, @RequestParam("name")String name, @RequestParam("price")String price, 
			@RequestParam("description")String description)
	{
		product.setId(id);
		product.setName(name);
		product.setPrice(price);
		product.setDescription(description);
		ModelAndView mv = new ModelAndView("redirect:/manage_products");
		if(productDAO.update(product))
		{
			mv.addObject("message", "Successfully update the Product");
		}
		else
		{
			mv.addObject("message", "Not able to update Product. please contact Administrator");
		}
		return mv;
		
	}
}
