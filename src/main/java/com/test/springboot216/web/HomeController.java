package com.test.springboot216.web;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController implements ErrorController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView defaultHomePage(ModelMap m, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("HomeController.....");
		// ModelAndView model = new ModelAndView("redirect:welcome");
		//new Integer("wewewe");
		ModelAndView model = new ModelAndView("/welcome");
		return model;
	}

	@RequestMapping("/error")
	public String handleError(HttpServletRequest request) {
		Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

		if (status != null) {
			Integer statusCode = Integer.valueOf(status.toString());

			if (statusCode == HttpStatus.NOT_FOUND.value()) {
				return "error-404";
			} else if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
				return "error-500";
			}
		}
		return "error";
	}

	@Override
	public String getErrorPath() {
		return "/error";
	}

}