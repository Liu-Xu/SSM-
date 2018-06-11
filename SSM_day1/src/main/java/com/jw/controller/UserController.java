package com.jw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jw.bean.User;
import com.jw.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/list")
	public String list(Model model, User user) {
		if (user.getPageNo() == null || user.getPageNo().equals("")) {
			user.setPageNo(1);
			user.setPageSize(5);
		}
		
		List<User> list = userService.list(user);
		model.addAttribute("userList", list);
		model.addAttribute("user", user);
		return "user/index";
	}
	
	@RequestMapping("/toAdd")
	public String toAdd() {
		
		return "user/add";
	}
	
	@RequestMapping("/insert")
	public String insert(User user) {
		userService.insert(user);
		return "redirect:/user/list";
	}
	
	@RequestMapping("/toEdit/{id}")
	public String toEdit(@PathVariable String id, Model model) {
		User user = userService.get(id);
		model.addAttribute("user", user);
		return "user/edit";
	}
	
	@RequestMapping("/update")
	public String update(User user) {
		userService.update(user);
		return "redirect:/user/list";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable String id) {
		userService.delete(id);
		return "redirect:/user/list";
	}
}
