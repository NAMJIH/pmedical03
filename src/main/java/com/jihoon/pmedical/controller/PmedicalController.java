package com.jihoon.pmedical.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jihoon.pmedical.dao.PmedicalDao;
import com.jihoon.pmedical.vo.PmedicalVo;

@Controller
public class PmedicalController {
	@Autowired
	private PmedicalDao pd;
	
	@RequestMapping("/main")
	public String list(Model model) {
		List<PmedicalVo> list = pd.getList();
		model.addAttribute("list",list);
		return "main";
	}
	@RequestMapping("/addform")
	public String addform() {
		return "addform";
	}
	@RequestMapping("/add")
	public String add(@ModelAttribute PmedicalVo pv) {
		
		pd.insert(pv);
		return "redirect:/main";
	}
	@RequestMapping("/updateform")
	public String updateform(@RequestParam("no") long no , Model model ) {
		PmedicalVo vo = pd.getByNo(no);
		model.addAttribute("vo", vo);

		return "updateform";
	}
	@RequestMapping("/update")
	public String update(@ModelAttribute PmedicalVo pv) {
		
		pd.update(pv);
		return "redirect:/main";
	}
	@RequestMapping("/delete")
	public String delete(@ModelAttribute PmedicalVo pv) {
		
		pd.delete(pv);
		return "redirect:/main";
	}
}
