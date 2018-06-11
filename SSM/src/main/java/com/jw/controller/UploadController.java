package com.jw.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class UploadController {
	
	@RequestMapping("/upload")
	public @ResponseBody String upload(HttpServletRequest request, String fileName) throws IllegalStateException, IOException {
		MultipartHttpServletRequest mh = (MultipartHttpServletRequest) request;
		// 根据文件名称获取文件对象
		CommonsMultipartFile cm = (CommonsMultipartFile) mh.getFile(fileName);
		// 获取文件名
		String originalFilename = cm.getOriginalFilename();
		// 获取上下文路径
		String realPath = request.getServletContext().getRealPath("/upload/");
		// 上传
		cm.transferTo(new File(realPath + "/" + originalFilename));
		// 相对路径
		String filePath = "upload/" + originalFilename;
		
		return "{\"filePath\" : \""+filePath+"\"}";
	}
}
