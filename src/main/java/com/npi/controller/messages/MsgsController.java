package com.npi.controller.messages;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.npi.controller.head.MessagesController;
import com.npi.service.IHeadService;
import com.npi.service.IListService;
import com.npi.service.IMessagesService;

@Controller
@RequestMapping("/list/")
public class MsgsController {
private static Logger logger = LoggerFactory.getLogger(MessagesController.class);
	
	@Autowired
	private IHeadService iHeadService;
	
	@Autowired
	private IMessagesService iMessagesService;
	
	@Autowired
	private IListService iListService;
	//批量添加检讨信息
@RequestMapping("selectbycusandpro.do")	
@ResponseBody
public ModelAndView listByCusnameAndProname(String cusname,String proname){
	int id;
	ModelAndView mv=new ModelAndView();
	try {
		 id=iHeadService.selectIdByCusnameAndProname(cusname,proname);
		 logger.info(String.valueOf(id));
		 
	mv.addObject("zhuananxinxilist",iHeadService.selectOneHeadByid(id));
	//设计方面数目
	mv.addObject("shejifangmiancount",iListService.shejifangmiancount(id)+11);
	//软件方面数目
	mv.addObject("ruanjianfangmiancount",iListService.ruanjianfangmiancount(id)+2);
	//工艺方面数目
	mv.addObject("gongyifangmiancount",iListService.gongyifangmiancount(id)+2);
	//作业方面数目
	mv.addObject("zuoyefangmiancount",iListService.zuoyefangmiancount(id)+2);
	//来料方面数目
	mv.addObject("lailiaofangmiancount",iListService.lailiaofangmiancount(id)+2);
	//客户方面数目
	mv.addObject("kehufangmiancount",iListService.kehufangmiancount(id)+2);
	//其他方面数目
	mv.addObject("otherfangmiancount",iListService.otherfangmiancount(id)+1);
	//设计方面，机构部分，soundbar
	mv.addObject("shejijigousoundbar",iListService.shejijigousoundbar(id));
	//设计方面，机构部分，woofer
	mv.addObject("shejijigouwoofer",iListService.shejijigouwoofer(id));
	//设计方面，电子部分，soundbar
	mv.addObject("shejidianzisoundbar",iListService.shejijigousoundbar(id));
	//设计方面，电子部分，woofer
	mv.addObject("shejidianziwoofer",iListService.shejijigouwoofer(id));
	//设计方面，喇叭部分，soundbar
	mv.addObject("shejilabasoundbar",iListService.shejilabasoundbar(id));
	//设计方面，喇叭部分，woofer
	mv.addObject("shejilabawoofer",iListService.shejilabawoofer(id));
	//设计方面，包装部分，soundbar
	mv.addObject("shejibaozhuangsoundbar",iListService.shejibaozhuangsoundbar(id));
	//设计方面，包装部分，woofer
	mv.addObject("shejibaozhuangwoofer",iListService.shejibaozhuangwoofer(id));
	//设计方面，其他部分，soundbar
	mv.addObject("shejiothersoundbar",iListService.shejiothersoundbar(id));
	//设计方面，其他部分，woofer
	mv.addObject("shejiotherwoofer",iListService.shejiotherwoofer(id));
	//软件方面，soundbar
	mv.addObject("ruanjiansoundbar",iListService.ruanjiansoundbar(id));
	//软件方面，woofer
	mv.addObject("ruanjianwoofer",iListService.ruanjianwoofer(id));
	//工艺方面，soundbar
	mv.addObject("gongyisoundbar",iListService.gongyisoundbar(id));
	//工艺方面，woofer
	mv.addObject("gongyiwoofer",iListService.gongyiwoofer(id));
	//作业方面，soundbar
	mv.addObject("zuoyesoundbar",iListService.zuoyesoundbar(id));
	//作业方面，woofer
	mv.addObject("zuoyewoofer",iListService.zuoyewoofer(id));
	//来料方面，soundbar
	mv.addObject("lailiaosoundbar",iListService.lailiaosoundbar(id));
	//来料方面，woofer
	mv.addObject("lailiaowoofer",iListService.lailiaowoofer(id));
	//客户方面，soundbar
	mv.addObject("kehusoundbar",iListService.kehusoundbar(id));
	//客户方面，woofer
	mv.addObject("kehuwoofer",iListService.kehuwoofer(id));
	//其他方面，soundbar & woofer
	mv.addObject("otherfangmian",iListService.otherfangmian(id));
	mv.setViewName("listall");
	return mv;
	} catch (Exception e) {
		mv.addObject("msg", "搜索结果不唯一，请重新输入搜索条件");
		mv.setViewName("listall");
		return mv;
	}
}
//跳转到设计改善报告页面
@RequestMapping("listall.do")	
@ResponseBody
public ModelAndView listAllMessages(){
	ModelAndView mv=new ModelAndView();
	mv.setViewName("listall");
	return mv;
}
}
