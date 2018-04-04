package com.newcapec.callcenter.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 页面跳转controller
 * 
 * @author yutons
 * @date 2017年8月10日 上午11:15:56
 */
@RequestMapping("/admin/pagejump")
@Controller
public class PageJunpController {
	/**
	 * 跳转到index主页
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "index";
	}

	/**
	 * 跳转到welcome页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome(Model model) {
		return "welcome";
	}
}
