package org.iii.ee100.animour.shopping.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.ClassifyService;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ClassifyService classifyService;
	
	//product and page
	@RequestMapping("/product/index")
	public String productIndex(@RequestParam(value="pageNo", required=false, defaultValue="1") String pageNoStr, 
			Map<String, Object> map, Model model) throws Exception {
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(pageNoStr);
		} catch (NumberFormatException e) {}
		
		if(pageNo < 1 ) {
			pageNo = 1;
		}
		Page<Product> page = productService.getPage(pageNo, 6);
		int totalPage = page.getTotalPages();
		if(pageNo > totalPage && totalPage != 0) {
			pageNo = totalPage;
		}
		page = productService.getPage(pageNo, 6);
		map.put("page", page);
		model.addAttribute("productAll", productService.getAll());
		model.addAttribute("classifies", classifyService.getAll());
		return "/shopping/ProductIndex";
		//測試頁
//		return "/shopping/ProcessProductForm";
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
		try {
			productService.delete(product.getId());
			model.addAttribute("deleteId", Long.valueOf(product.getId()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/shopping/ProcessProductForm";
	}
	
	//Insert Product
	@RequestMapping(value="/product/insert", method=RequestMethod.GET)
	public String input(Map<String, Object> map) {
		map.put("Classifies", classifyService.getAll());
		map.put("product", new Product());
		return "/shopping/TestCRUDindex";
	}
	
	//Insert Product
	@RequestMapping(value="/product/insert", method={RequestMethod.POST})
	public String insertProduct(@ModelAttribute(name="product") Product product, Model model) {
		try {
			productService.insert(product);
//			model.addAttribute("insertMember", product);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "/rollback";
		}
		return "redirect:/product/index";
	}
	
	@RequestMapping(path= {"/updateProduct"}, method={RequestMethod.POST})
	public String updateProduct(Product product, Model model) {
		try {
			productService.update(product);
			model.addAttribute("updateMember", product);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
	
	
//	@RequestMapping("/queryByCategory")
//	public String getCategoryList(Model model) {
//		List<String> categories = productService.getAllCategories();
//		model.addAttribute("categoryList", categories);
//		return "type/category";
//	}
	
	@RequestMapping("/products/{category}")
	public String getByCategory(@PathVariable("category") String category, Model model) {
//		List<Product> books = productService.getProductsByCategory(category);
//		classifyService.getAll();
		List<Product> products = productService.getByClassify(Long.parseLong(category));
		model.addAttribute("products", products);
		return "redirect:/product/index";
	}
	
	
	//find Product by Classify
	@RequestMapping(path= {"/selectClassify"}, method={RequestMethod.GET})
	public String selectClassify(Product product, Model model) {
//		List<Product> pd = productService.getByClassify(product.getClassify().getId());
		ArrayList<Product> products = productService.getAll();
			model.addAttribute("productList", products);
		return "/shopping/ProcessProductForm";
	}
	
	//find Product by PriceLessThanEqual
	@RequestMapping(path= {"/selectPrice"}, method={RequestMethod.GET})
	public String selectPrice(Product product, Model model) {
		List<Product> pd = productService.getByPriceLessThanEqual(Integer.valueOf(product.getPrice()));
		if (pd != null) {
			model.addAttribute("productByPriceLessThanEqual", pd);
		}
		return "/shopping/ProcessProductForm";
	}
}
