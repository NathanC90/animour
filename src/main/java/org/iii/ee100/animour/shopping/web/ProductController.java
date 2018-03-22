package org.iii.ee100.animour.shopping.web;

import java.text.SimpleDateFormat;

import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@InitBinder
	public void registerCustomerEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.sql.Timestamp.class,
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"), false));
	}
	
	@RequestMapping("/product/index")
	public String productIndex(Model model) {
		return "/shopping/ProductIndex";
	}
	
	@RequestMapping(path= {"/selectOneProduct"}, method={RequestMethod.GET})
	public String selectOneProduct(Product product, Model model) {
		Product pd = productService.getOne(Long.valueOf(product.getId()));
		if (pd != null) {
			model.addAttribute("productOne", pd);
		}
		return "/shopping/ProcessProductForm";
	}
	
	@RequestMapping(path= {"/selectAllProduct"}, method={RequestMethod.GET})
	public String selectAllProduct(Model model) {
		model.addAttribute("productAll", productService.getAll());
		return "/shopping/ProcessProductForm";
	}
	
	@RequestMapping(path= {"/deleteOneProduct"}, method={RequestMethod.GET})
	public String deleteOneProduct(Product product, Model model) {
		productService.delete(product.getId());
		model.addAttribute("deleteId", Long.valueOf(product.getId()));
		return "/shopping/ProcessProductForm";
	}
	
	@RequestMapping(path= {"/insertProduct"}, method={RequestMethod.POST})
	public String insertAnimal(Product product, Model model) {
		productService.insert(product);
		model.addAttribute("insertMember", product);
		return "/shopping/ProcessProductForm";
	}
	
	@RequestMapping(path= {"/updateProduct"}, method={RequestMethod.POST})
	public String updateProduct(Product product, Model model) {
		productService.update(product);
		model.addAttribute("updateMember", product);
		return "/shopping/ProcessProductForm";
	}
	
}
