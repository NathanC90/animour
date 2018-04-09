package org.iii.ee100.animour.shopping.web;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@InitBinder
	public void registerCustomerEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.sql.Timestamp.class,
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"), false));
	}
	
	//product and page
	@RequestMapping("/product/index")
	public String productIndex(@RequestParam(value="pageNo", required=false, defaultValue="1") String pageNoStr, 
			Map<String, Object> map, Model model) {
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(pageNoStr);
		} catch (NumberFormatException e) {}
		
		if(pageNo < 1 ) {
			pageNo = 1;
		}
		Page<Product> page = productService.getPage(pageNo, 6);
		int totalPage = page.getTotalPages();
		if(pageNo > totalPage) {
			pageNo = totalPage;
		}
		page = productService.getPage(pageNo, 6);
		map.put("page", page);
		model.addAttribute("productAll", productService.getAll());
		return "/shopping/ProductIndex";
//		return "/shopping/TestCRUDindex";
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
	
	//Insert Product
	@RequestMapping(value="/insertProduct", method={RequestMethod.POST})
	public String insertProduct(Product product, Model model) {
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
	
	//KeyWord Select By Product
	@RequestMapping(path= {"/selectByNameKeyWord"}, method={RequestMethod.GET})
	public String selectByNameKeyWord(Product product, Model model) {
		List<Product> pd = productService.getByNameKeyWord(product.getName());
		if (pd != null) {
			model.addAttribute("productByNameKeyWord", pd);
		}
		return "/shopping/ProcessProductForm";
	}
	
}
