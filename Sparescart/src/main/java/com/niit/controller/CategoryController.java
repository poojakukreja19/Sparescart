package com.niit.controller;

import java.util.List;

import org.hibernate.cache.spi.QueryResultsRegion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.sparescart.dao.CategoryDAO;
import com.niit.sparescart.domain.Category;

@Controller
public class CategoryController {
	
//category.jsp -addCategory,deleteCategory,showCategoryList,updateCategory
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	//Curd operation
	
	
	@PostMapping("/manage_category_create") //for calling create method through jsp page
	
	//public ModelAndView createcategory(@ModelAttribute)//send data directly in 
	
	public ModelAndView createCategory(@RequestParam("id")String id, @RequestParam("name")String name, 
			@RequestParam("description")String description)
	{
		
		category.setId(id);
		category.setName(name);
		category.setDescription(description);
		System.out.println(id +name + description);
		ModelAndView mv = new ModelAndView("redirect:/manage_categories");
		if(categoryDAO.save(category))
		{
			mv.addObject("message", "Successfully created the Category");
		}
		else
		{
			mv.addObject("message", "Not able to delete Category. please contact Administrator");
		}
		return mv;
		
	}
	
	//@DeleteMapping("/manage_category_delete")//  create form action on jsp page for delete mapping
	@GetMapping("/manage_category_delete/{id}")
	public ModelAndView deleteCategory(@PathVariable("id") String id)//showing path on url
	{
		ModelAndView mv = new ModelAndView("redirect:/manage_categories");
		if(categoryDAO.delete(id))
		{
			mv.addObject("message", "Successfully delete the Category");
		}
		else
		{
			mv.addObject("message", "Not able to delete Category. please contact Administrator");
		}
		return mv;
	}
		
	//@PostMapping("/manage_category_edit")
	
	@GetMapping("/manage_category_edit/{id}/{name}/{description}")
	public ModelAndView updateCategory(@PathVariable("id") String id,@PathVariable("name") String name,@PathVariable("description") String description)
	{
		System.out.println(id +name +description);
		
		category.setId(id);
		category.setName(name);
		category.setDescription(description);
		ModelAndView mv = new ModelAndView("redirect:/manage_categories");
		if(categoryDAO.update(category))
		{
			mv.addObject("message", "Successfully delete the Category");
		}
		else
		{
			mv.addObject("message", "Not able to delete Category. please contact Administrator");
		}
		return mv;
		
	}
}
