package com.anyuhang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.anyuhang.service.BizService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class BizController {

	@Autowired
	private BizService service;
	
	@RequestMapping("list")
	public String getlist(Model model,@RequestParam(defaultValue="1")int pageNum,Integer vo,Integer vo2) {
		int pageSize=3;
		
	    PageHelper.startPage(pageNum, pageSize);
	    List list=service.getBizList(vo,vo2);
		PageInfo info =new PageInfo(list);
		model.addAttribute("info", info);
		return "list";
	}
	
	
}
