package org.iii.ee100.animour.shopping.web;

import java.text.SimpleDateFormat;

import org.iii.ee100.animour.shopping.entity.ProductBean;
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
	ProductService product;
	
	@InitBinder
	public void registerCustomerEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.sql.Timestamp.class,
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"), false));
	}
	
	@RequestMapping("/productIndex")
	public String productIndex(Model model) {
		return "/shopping/ProductIndex";
	}
	
	@RequestMapping(path= {"/selectOneProduct"}, method={RequestMethod.GET})
	public String selectOneProduct(ProductBean productBean, Model model) {
		ProductBean pd = product.getOne(Long.valueOf(productBean.getId()));
		if (pd != null) {
			model.addAttribute("productOne", pd);
		}
		return "/shopping/ProcessProductForm";
	}
	
	@RequestMapping(path= {"/selectAllProduct"}, method={RequestMethod.GET})
	public String selectAllProduct(Model model) {
		model.addAttribute("productAll", product.getAll());
		return "/shopping/ProcessProductForm";
	}
	
	@RequestMapping(path= {"/deleteOneProduct"}, method={RequestMethod.GET})
	public String deleteOneProduct(ProductBean productBean, Model model) {
		product.delete(productBean.getId());
		model.addAttribute("deleteId", Long.valueOf(productBean.getId()));
		return "/shopping/ProcessProductForm";
	}
	
	@RequestMapping(path= {"/insertProduct"}, method={RequestMethod.POST})
	public String insertAnimal(ProductBean productBean, Model model) {
		product.insert(productBean);
		model.addAttribute("insertMember", productBean);
		return "/shopping/ProcessProductForm";
	}
	
	@RequestMapping(path= {"/updateProduct"}, method={RequestMethod.POST})
	public String updateProduct(ProductBean productBean, Model model) {
		product.update(productBean);
		model.addAttribute("updateMember", productBean);
		return "/shopping/ProcessProductForm";
	}
	
}
