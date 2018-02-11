package web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import form.LoginForm;
import validation.GroupOrder;

@Controller
public class LoginController {

	@RequestMapping(value = "/")
	public String index(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/login")
	public String login(Model model, 
			@Validated(GroupOrder.class) 
			@ModelAttribute("loginForm") 
	        LoginForm loginForm, BindingResult result) {
		
		if(result.hasErrors()) {
			return "index";
		}
		
		model.addAttribute("loginName", loginForm.getLoginName());
		return "top";
	}
}
