package com.spring;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Component
public class MainController {

	@RequestMapping(value="/home")
	public ModelAndView home(){
		ModelAndView model = new ModelAndView();
		model.setViewName("home");
		System.out.println("yeah");
		return model;
		
	}
	@RequestMapping(value="/Add",method = RequestMethod.GET)
	public ModelAndView Add(HttpRequest httpRequest){
		ModelAndView model = new ModelAndView();
		model.setViewName("result");
		
		String Message="Yo did it";
		model.addObject(Message, Message);
		
		return model;
		
	}
}
