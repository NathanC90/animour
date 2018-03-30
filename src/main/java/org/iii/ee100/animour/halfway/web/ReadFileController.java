package org.iii.ee100.animour.halfway.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ReadFileController {

	// Spring mvc架構中，用Multipart 讀取表單中上傳的檔案
	// @RequestParam = request.getParameter("file")
	@RequestMapping(value = "/saveMultipart", method= {RequestMethod.POST})
	public  @ResponseBody String saveMultipart(@RequestParam("file") MultipartFile file) {
		String fileName = null;

		if (file != null) {
			try {
				fileName = file.getOriginalFilename();
				// 把讀進來的檔案，轉成byte陣列
				byte[] bytes = file.getBytes();
				BufferedOutputStream buffout = new BufferedOutputStream(
						new FileOutputStream(new File("/Users/kevinhsu/Desktop/retrieve/tmp" + fileName)));
				// 利用Outputstream 把檔案內容(byte陣列)透過write方法寫出，至硬碟端檔案(檔案名稱為"/tmp"+fileName)
				buffout.write(bytes);
				buffout.close();

			} catch (IOException e) {
				e.printStackTrace();
			}
			return "檔案成功上傳";
		}
		return "檔案上傳失敗";
	}

}
