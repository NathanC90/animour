package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.City;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.halfway.service.SpecificationHalfway;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AnimalController {

	@Autowired
	AnimalService animalservice;

	// 首頁
	// @RequestMapping(value = "/halfway", method = RequestMethod.GET)
	public String index(@RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {
		Page<Animal> page = animalservice.getAnimalPage(pageNumber, pageSize); // pageNumber=頁數 pageSize=一頁幾筆資料
		model.addAttribute("animalpage", page);

		// 設定當前會員
		Member current = animalservice.getCurrentMember();
		model.addAttribute("currentMember", current);

		animalservice.updateAnimalCount();
		List<City> citys = animalservice.getQueryCity();
		model.addAttribute("citys", citys);
		return "/halfway/halfwayIndex";
	}

	// 首頁分頁處理
	// @RequestMapping(value = { "/halfway/pageQueryAll" }, method =
	// RequestMethod.GET)
	public String getAnimalPage(@RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {
		Page<Animal> page = animalservice.getAnimalPage(pageNumber, pageSize); // pageNumber=頁數 pageSize=一頁幾筆資料
		model.addAttribute("animalpage", page);

		// 設定當前會員
		Member current = animalservice.getCurrentMember();
		model.addAttribute("currentMember", current);

		animalservice.updateAnimalCount();
		List<City> citys = animalservice.getQueryCity();
		model.addAttribute("citys", citys);
		return "/halfway/halfwayIndex";
	}

	// 轉跳至詳情頁面
	@RequestMapping(value = "/halfway/detail", method = { RequestMethod.GET })
	public String animalDetail(Long id, Model model) {
		Animal animal = animalservice.getOne(id);
		// animal.setMember(member);
		model.addAttribute("animal", animal);

		Member current = animalservice.getCurrentMember();
		model.addAttribute("currentMember", current);
		return "/halfway/animalDetail";
	}

	// 轉跳至insert表單
	@RequestMapping(value = "/insertAnimal", method = { RequestMethod.GET })
	public String animalForm(Model model) {
		Animal an = new Animal();
		model.addAttribute("animal", an);
		List<City> citys = animalservice.getAllCity();
		model.addAttribute("citys", citys);
		return "/halfway/insertAnimalForm";
	}

	// 接收使用者提送表單， Spring mvc架構中，用Multipart 讀取表單中上傳的檔案
	// @RequestParam = request.getParameter("file")
	@RequestMapping(value = "/insertAnimal", method = { RequestMethod.POST })
	public String insertAnimal(@RequestParam(value = "file", required = false) MultipartFile image,
			@ModelAttribute("animal") Animal an, HttpServletRequest request, Model model) {
		// 設定當前會員
		Member current = animalservice.getCurrentMember();
		an.setMember(current);
		// 普通表單
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		an.setUpload(ts);
		// 先insert，才能取得自動生成的id，做為儲存圖片的檔名
		animalservice.insert(an);
		String fileName = animalservice.readImage(image, request, an);

		an.setFileName(fileName);
		// 儲存圖片之後，更新檔名
		animalservice.update(an);
		model.addAttribute("inanimal", an);
		return "/halfway/insertSuccess";
	}

	// 轉跳至update表單
	@RequestMapping(value = "/halfway/updateAnimal", method = { RequestMethod.GET })
	public String toUpdate(@RequestParam("id") Long id, Model model) {
		Animal an = animalservice.getOne(id);
		model.addAttribute("animal", an);
		List<City> citys = animalservice.getAllCity();
		model.addAttribute("citys", citys);
		return "/halfway/updateAnimalForm";
	}

	// 送出update 表單
	@RequestMapping(value = "/halfway/updateAnimal", method = { RequestMethod.POST })
	public String updateAnimal(@RequestParam(value = "file", required = false) MultipartFile image, Animal an,
			HttpServletRequest request, Model model) {
		// 普通表單
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		an.setUpload(ts);
		animalservice.readImage(image, request, an);
		animalservice.update(an);
		model.addAttribute("inanimal", an);

		return "/halfway/insertSuccess";
	}

	@RequestMapping(value = "/deleteAnimal", method = { RequestMethod.GET })
	public String deleteAnimal(Animal an, Model model) {
		an = animalservice.getOne(an.getId());
		if (an != null) {
			animalservice.delete(an.getId());
			model.addAttribute("dlanimalId", an.getId());
		}
		return "/halfway/FindAnimal";
	}

	@RequestMapping("/selectAllAnimal")
	public String findAllAnimal(Model model) {
		return "/halfway/FindAnimal";
	}

	@RequestMapping("/selectOneAnimal")
	public String findOneAnimal(Animal an, Model model) {
		an = animalservice.getOne(an.getId());
		if (an != null) {
			model.addAttribute("animal", an);
		}
		return "/halfway/FindAnimal";
	}

	// 生成表單下拉式選單欄位
	@ModelAttribute("allCity")
	public Map<Long, String> getAllCity() {
		Map<Long, String> cityMap = new HashMap<>();
		List<City> citys = animalservice.getAllCity();
		for (City city : citys) {
			cityMap.put(city.getId(), city.getName());
		}
		return cityMap;
	}

	// 生成表單下拉式選單欄位
	@ModelAttribute("allSpecie")
	public List<String> getAllSpecie() {
		return animalservice.setSpecie();
	}

	@RequestMapping(value = "/halfway") // findAll
	public String listPage(Model model) {
		// 設定當前會員
		Member current = animalservice.getCurrentMember();
		model.addAttribute("currentMember", current);
		// 依縣市別更新動物數量
		animalservice.updateAnimalCount();
		List<City> citys = animalservice.getQueryCity();
		model.addAttribute("citys", citys);
		return "/halfway/list";
	}

	@RequestMapping(value = "/add", method = { RequestMethod.GET })
	public String addPage(Model model) {
		Animal an = new Animal();
		model.addAttribute("animal", an);
		List<City> citys = animalservice.getAllCity();
		model.addAttribute("citys", citys);
		return "/halfway/add";
	}

	// 多重查詢測試
	@RequestMapping(value = "/queryTest", method = { RequestMethod.GET })
	public String specificationQuery(@RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {
		Specification<Animal> spec = Specifications.where(SpecificationHalfway.containsLike("name", "Cat"))
				.or(SpecificationHalfway.containsLike("name", "Bird"));
		
		Page<Animal> page = animalservice.getSpecPage(pageNumber, pageSize, spec); 
		model.addAttribute("animalpage", page);

		// 設定當前會員
				Member current = animalservice.getCurrentMember();
				model.addAttribute("currentMember", current);

				animalservice.updateAnimalCount();
				List<City> citys = animalservice.getQueryCity();
				model.addAttribute("citys", citys);
				return "/halfway/halfwayIndex";
	}

}
