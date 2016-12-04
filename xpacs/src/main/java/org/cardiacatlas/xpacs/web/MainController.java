package org.cardiacatlas.xpacs.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/")
	public String getRoot() {
		return "redirect:/index";
	}

	@RequestMapping("/index")
	public String getIndex() {
		return "index";
	}
	
	@RequestMapping("/login-error")
	public String getLoginError(Model model) {
		model.addAttribute("loginError", true);
		return "index";
	}
}