package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sparescart.dao.SupplierDAO;
import com.niit.sparescart.domain.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Supplier supplier;
	
	@PostMapping("/manage_supplier_create")
	public ModelAndView createProduct(@RequestParam("id")String id, @RequestParam("name")String name, @RequestParam("contact")String contact, 
			@RequestParam("address")String address)
	{
		supplier.setId(id);
		supplier.setName(name);
		supplier.setContact(contact);
		supplier.setAddress(address);
		ModelAndView mv = new ModelAndView("redirect:/manage_suppliers");
		if(supplierDAO.save(supplier))
		{
			mv.addObject("message", "Successfully created the Supplier");
		}
		else
		{
			mv.addObject("message", "Not able to create Supplier. please contact Administrator");
		}
		return mv;	
	}
	
	@GetMapping("/manage_suppliers_delete/{id}")
	public ModelAndView deleteProduct(@PathVariable("id") String id)//showing path on url
	{
		ModelAndView mv = new ModelAndView("redirect:/manage_suppliers");
		if(supplierDAO.deleteById(id))
		{
			mv.addObject("message", "Successfully delete the supplier");
		}
		else
		{
			mv.addObject("message", "Not able to delete supplier. please contact Administrator");
		}
		return mv;
	}
	
	@GetMapping("/manage_suppliers_edit/{id}/{name}/{contact}/{address}")
	public ModelAndView updateSupplier(@RequestParam("id")String id, @RequestParam("name")String name, @RequestParam("contact")String contact, 
			@RequestParam("address")String address)
	{
		supplier.setId(id);
		supplier.setName(name);
		supplier.setContact(contact);
		supplier.setAddress(address);
		ModelAndView mv = new ModelAndView("redirect:/manage_suppliers");
		if(supplierDAO.save(supplier))
		{
			mv.addObject("message", "Successfully update the Supplier");
		}
		else
		{
			mv.addObject("message", "Not able to update supplier. please contact Administrator");
		}
		return mv;
		
	}

}
