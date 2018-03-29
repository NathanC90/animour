package org.iii.ee100.animour.halfway.web;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
public class RetrieveImageController {

	//@Autowired
	AnimalDao dao;

	//@RequestMapping (value=)
	public String retrieveImage(HttpServletRequest request, HttpServletResponse response, Model model)
			throws SQLException, IOException {
		OutputStream os = null;
		InputStream is = null;
		String fileName = null;

		// 接收資料
		String idstring = request.getParameter("id");
		String type = request.getParameter("type");

		Long id = null;
		if (type.equalsIgnoreCase("animal")) {
			try {
				id = Long.parseLong(idstring);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
			Animal an = dao.findOne(id);
			is = an.getImage().getBinaryStream();
			fileName = an.getFileName();
		} // 取回的圖片檔，用inputstream接收，存為屬性。

		// 由圖片檔的檔名來得到檔案的MIME型態
		ServletContext context = request.getServletContext();
		String mimeType = context.getMimeType(fileName);

		// 設定輸出資料的型態
		response.setContentType(mimeType);
		// 取得能寫出非文字資料的OutputStream物件
		os = response.getOutputStream();

		// 如果圖片的來源有問題，就送回預設圖片(/images/NoImage.jpg)
		if (is == null) {
			is = context.getResourceAsStream("/images/NoImage.jpg");
		}

		int len = 0;

		byte[] bytes = new byte[8192];
		while ((len = is.read(bytes)) != -1) {
			os.write(bytes, 0, len);
		}
		return null;
	}

}
