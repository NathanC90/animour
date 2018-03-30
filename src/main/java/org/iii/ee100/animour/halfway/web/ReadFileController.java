package org.iii.ee100.animour.halfway.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ReadFileController {

	// Spring mvc架構中，用Multipart 讀取表單中上傳的檔案
	// @RequestParam = request.getParameter("file")
	@RequestMapping(value = "/saveMultipart", method = { RequestMethod.POST })
	public @ResponseBody String saveMultipart(@RequestParam("file") MultipartFile file, HttpServletRequest request,
			Model model) {
		String fileName = null;
		String uploadRootPath = request.getServletContext().getRealPath("images/");
		System.out.println("uploadRootPath=" + uploadRootPath);

		File uploadRootDir = new File(uploadRootPath);
		if (!uploadRootDir.exists()) {
			uploadRootDir.mkdirs();
		}

		if (file != null) {
			try {
				fileName = file.getOriginalFilename();
				// 把讀進來的檔案，轉成byte陣列
				byte[] bytes = file.getBytes();
				BufferedOutputStream buffout = new BufferedOutputStream(
						new FileOutputStream(new File(uploadRootPath + fileName)));
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

	@RequestMapping(value = "/showMultipart", method = { RequestMethod.GET })
	public String showMultipart(@RequestParam("id") Long id, Animal an, HttpServletRequest request,
			HttpServletResponse response, Model model) {
		FileInputStream fis = null;
		OutputStream os = null;

		String uploadRootPath = request.getServletContext().getRealPath("images/");
		File file = new File(uploadRootPath);
		try {
			fis = new FileInputStream(file);
			os = response.getOutputStream();
			response.setContentType("image/jpg");

			int len = 0;
			byte[] bytes = new byte[8192];
			while ((len = fis.read(bytes)) != -1) {
				os.write(bytes, 0, len);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (os != null) {
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (fis != null) {
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
}
