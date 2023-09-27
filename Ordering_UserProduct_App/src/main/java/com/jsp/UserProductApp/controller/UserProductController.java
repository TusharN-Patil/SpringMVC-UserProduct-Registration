package com.jsp.UserProductApp.controller;

import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.UserProductApp.UserProductConfig;
import com.jsp.UserProductApp.dao.ProductDao;
import com.jsp.UserProductApp.dao.UserDao;
import com.jsp.UserProductApp.dto.Product;
import com.jsp.UserProductApp.dto.User;

@Controller
public class UserProductController {
	@Autowired
	private UserDao userDao;
	@Autowired
	private ProductDao productDao;

	@RequestMapping(value = "/save")
	public ModelAndView saveUser(@ModelAttribute User u, ModelAndView view) {
		u = userDao.saveUser(u);
		view.setViewName("Print");
		view.addObject("msg", "User Saved With Id:-" + u.getId());
		return view;
	}

	@RequestMapping(value = "/update")
	public ModelAndView updateUser(@ModelAttribute User u, ModelAndView view) {
		u = userDao.updateUser(u);
		view.setViewName("Print");
		view.addObject("msg", "User Updatet with id:-" + u.getId());
		return view;
	}

	@RequestMapping(value = "/delete")
	public ModelAndView deleteUser(@RequestParam int id, ModelAndView view) {
		boolean delete = userDao.deleteUser(id);
		if (delete) {
			view.setViewName("Print");
			view.addObject("msg", "User Are Deletet Successful!!");
			return view;
		} else {
			view.setViewName("Print");
			view.addObject("msg", "User Not Deletet!!");
			return view;
		}
	}

	@RequestMapping(value = "/verify")
	public ModelAndView verifyUser(@RequestParam String email, @RequestParam String password, ModelAndView view) {
		User u = userDao.verifyUser(email, password);
		if (u != null) {
			view.setViewName("Display");
			view.addObject("user", u);
			return view;
		} else {
			view.setViewName("Print");
			view.addObject("msg", "You Enter User Email or Password is Wrrong!!!");
			return view;
		}
	}

	@RequestMapping(value = "/savep")
	public ModelAndView savePro(@RequestParam int user_id, @ModelAttribute Product p, ModelAndView view) {
		p = productDao.saveProduct(p, user_id);
		if (p != null) {
			view.setViewName("Print");
			view.addObject("msg", "Product Are Added In User Id " + user_id);
			return view;
		} else {
			view.setViewName("Print");
			view.addObject("msg", "Product Are Not Added In User Id something Wrrong!!!!");
			return view;
		}
	}

	@RequestMapping(value = "/updatep")
	public ModelAndView updatePro(@ModelAttribute Product p, @RequestParam int user_id, ModelAndView view) {
		p = productDao.updateProduct(p, user_id);
		if (p != null) {
			view.setViewName("Print");
			view.addObject("msg", "Product Are Updatet In User Id" + user_id);
			return view;
		} else {
			view.setViewName("Print");
			view.addObject("msg", "Product Are Not Updatet In User Id something Wrrong!!!!");
			return view;
		}
	}

	@RequestMapping(value = "/deletep")
	public ModelAndView deletepro(@RequestParam int id, ModelAndView view) {
		boolean delete = productDao.deleteProduct(id);
		if (delete) {
			view.setViewName("Print");
			view.addObject("msg", "Product Are DeleteIn in  Id" + id);
			return view;
		} else {
			view.setViewName("Print");
			view.addObject("msg", "Product Are Not Deletet Something is Wrrong!!");
			return view;
		}
	}

	@RequestMapping(value = "/findp")
	public ModelAndView findProduct(@RequestParam int id, @RequestParam String name, ModelAndView view) {
		Product p = productDao.findProduct(id, name);
		if (p != null) {
			view.setViewName("DisplayPro");
			view.addObject("product", p);
			return view;
		} else {
			view.setViewName("Print");
			view.addObject("mag", "Product Not Find You Enter Wrrong !!!!");
			return view;
		}
	}

	@RequestMapping(value = "/load")
	public String loadView(@RequestParam String view) {
		return view;
	}
}
