package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController {
	
	@RequestMapping(value="/showMessage", method=RequestMethod.GET)
	public String showMessage(Model model) {
		model.addAttribute("message", "Spring Security");
		return "showMessage";
	}
}
