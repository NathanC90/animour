package org.iii.ee100.animour.shopping.web;

import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.ClassifyService;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.iii.ee100.animour.shopping.web.utility.pageUtility;
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

	// product contain page
	@RequestMapping(value = "/product/index")
	public String productIndex(@RequestParam(value = "pageNo", required = false, defaultValue = "1") String pageNoStr,
			Model model) throws Exception {
		int pageNo = pageUtility.getPageNumber(pageNoStr);
		Page<Product> page = productService.getPage(pageNo, 6);
		int totalPage = page.getTotalPages();
		if (pageNo > totalPage && totalPage != 0) {
			pageNo = totalPage;
		}
		page = productService.getPage(pageNo, 6);
		model.addAttribute("page", page);
		model.addAttribute("classifies", classifyService.getAll());
		return "/shopping/ProductIndex";
	}

	// product maintain
	@RequestMapping(value = "/product/maintain")
	public String maintain(@RequestParam(value = "pageNo", required = false, defaultValue = "1") String pageNoStr,
			Model model) throws Exception {
		int pageNo = pageUtility.getPageNumber(pageNoStr);
		Page<Product> page = productService.getPage(pageNo, 6);
		int totalPage = page.getTotalPages();
		if (pageNo > totalPage && totalPage != 0) {
			pageNo = totalPage;
		}
		page = productService.getPage(pageNo, 6);
		model.addAttribute("page", page);
		return "/shopping/maintain";
		// return "/shopping/ProcessProductForm";
	}

	// Insert Product
	@RequestMapping(value = "/product/insert", method = RequestMethod.GET)
	public String input(Model model) {
		model.addAttribute("Classifies", classifyService.getAll());
		model.addAttribute("product", new Product());
		return "/shopping/Management";
	}

	// Insert Product
	@RequestMapping(value = "/product/insert", method = { RequestMethod.POST })
	public String insertProduct(@ModelAttribute(name = "product") Product product, Model model) {
		try {
			productService.insert(product);
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		return "redirect:/product/maintain";
	}

	// Form Data Return Show
	@RequestMapping(value = "/product/{id}", method = { RequestMethod.GET })
	public String input(@PathVariable("id") Long id, Model model) {
		model.addAttribute("Classifies", classifyService.getAll());
		Product product = productService.getOne(id);
		model.addAttribute("product", product);
		return "/shopping/Management";
	}

	// Update Product
	@RequestMapping(value = { "/product/{id}" }, method = { RequestMethod.POST })
	public String updateProduct(Product product, Model model) {
		try {
			productService.update(product);
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		return "redirect:/product/maintain";
	}

	// Delete Product
	@RequestMapping(value = { "/delete/{id}" }, method = { RequestMethod.GET })
	public String delete(@PathVariable(name = "id") Long id) {
		try {
			productService.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		return "redirect:/product/maintain";
	}

	// SelectOne
	@RequestMapping(value = "/selectOneProduct", method = { RequestMethod.GET })
	public String selectOneProduct(@RequestParam(name = "id") Long id, Product product, Model model) {
		model.addAttribute("product", productService.getOne(id));
		return "/shopping/Product";
	}

	// find Product by Classify
	// @RequestMapping(path= {"/selectClassify"}, method={RequestMethod.GET})
	// public String selectClassify(Product product, Model model) {
	// ArrayList<Product> products = productService.getAll();
	// model.addAttribute("productList", products);
	// return "/shopping/ProcessProductForm";
	// }

}
