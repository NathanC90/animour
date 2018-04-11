package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;

import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdoptionController {

	@Autowired
	AdoptionService adoptionService;

	// 接收使用者提送表單， Spring mvc架構中，用Multipart 讀取表單中上傳的檔案
	// @RequestParam = request.getParameter("file")
	@RequestMapping(value = "/halfway/adoptionRequest", method = { RequestMethod.POST })
	public String adoptionRequest(String requestComment, Adoption adoption, Model model) {

		// 普通表單
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		adoption.setRequestDate(ts);
		// 先insert，才能取得自動生成的id，做為儲存圖片的檔名
		adoptionService.insert(adoption);
		model.addAttribute("inadoption", adoption);

		System.out.println("controller 有被呼叫");
		return "redirect:/halfway";
	}
	
	

}
