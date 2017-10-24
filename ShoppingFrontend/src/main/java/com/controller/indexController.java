package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Dao.UserDao;
import com.DaoImpl.UserDaoImpl;
import com.model.User;

@Controller
public class indexController {

	    @RequestMapping("/")
		public String index()
		{
			System.out.println("index working fine");
			return "index";
		}
	   	   
	   
	    @Autowired
	    UserDao userDao;
	    @RequestMapping("/register")
		public String goToregister()
		{
			System.out.println("register working fine");
			return "register";
		}
		
		@Autowired
		UserDaoImpl userDaoImpl;
		@RequestMapping(value="/saveRegister" , method=RequestMethod.POST)
		public ModelAndView saveRegister(@ModelAttribute("User")User user)
		{
		ModelAndView mv= new ModelAndView();
		user.setRole("ROLE_USER");
		userDaoImpl.insertUser(user);
		mv.setViewName("index");
		return mv;
		}
		
		
		
}
