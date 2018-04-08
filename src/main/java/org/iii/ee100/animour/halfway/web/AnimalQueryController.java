package org.iii.ee100.animour.halfway.web;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.AnimalQuery;
import org.iii.ee100.animour.halfway.service.AnimalQueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/queryAnimal")
public class AnimalQueryController {
	
	@Autowired
    AnimalQueryService animalQueryService;
	

	@RequestMapping("/findAnimalNoQuery")
    public String findAnimalNoQuery(ModelMap modelMap,@RequestParam(value = "page", defaultValue = "0") Integer page,
                        @RequestParam(value = "size", defaultValue = "5") Integer size){
        Page<Animal> datas = animalQueryService.findAnimalNoCriteria(page, size);
        modelMap.addAttribute("datas", datas);
        return "/halfway/index1";
    }
	
	 @RequestMapping(value = "/findAnimalQuery",method = {RequestMethod.GET,RequestMethod.POST})
	    public String findBookQuery(ModelMap modelMap, @RequestParam(value = "page", defaultValue = "0") Integer page,
	                                @RequestParam(value = "size", defaultValue = "5") Integer size, AnimalQuery bookQuery){
	        Page<Animal> datas = animalQueryService.findAnimalCriteria(page, size,bookQuery);
	        modelMap.addAttribute("datas", datas);
	        return "/halfway/index2";
	    }
}
