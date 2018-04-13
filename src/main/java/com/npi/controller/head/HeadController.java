package com.npi.controller.head;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.npi.common.ServerResponse;
import com.npi.pojo.Head;
import com.npi.pojo.Messages;
import com.npi.service.IHeadService;
import com.npi.service.IMessagesService;


@Controller
@RequestMapping("/head/")
public class HeadController {
	
	@Autowired
	private IHeadService iHeadService;
	
	@Autowired
	private IMessagesService iMessagesService;
//查找所有专案信息	
@RequestMapping("select_all.do")
@ResponseBody
public ModelAndView selectAll(Model model) throws ServletException, IOException{
	     List<Head>  headlist=new ArrayList<Head>();
	   ModelAndView mv = new ModelAndView();
	   headlist=iHeadService.selectAll();
       //封装要显示到视图的数据
       mv.addObject("headlist",headlist);
       //视图名
       mv.setViewName("zhuananxinxi1");
       return mv;
		}
//筛选专案信息
@RequestMapping("select_by_cusandpro.do")
@ResponseBody
public ModelAndView selectByCusnameAndProname(Model model,String cusname,String proname) throws ServletException, IOException{
	 List<Head>  headlist=new ArrayList<Head>();
	  ModelAndView mv=new ModelAndView();
	   headlist=iHeadService.selectByCusnameAndProname(cusname,proname);
	   mv.addObject("headlist", headlist);
	   mv.setViewName("zhuananxinxi1");
	 return mv;
}
@RequestMapping("select_by_cusandpro3.do")
@ResponseBody
public ModelAndView selectByCusnameAndProname3(Model model,String cusname,String proname) throws ServletException, IOException{
	 List<Head>  headlist=new ArrayList<Head>();
	  ModelAndView mv=new ModelAndView();
	   headlist=iHeadService.selectByCusnameAndProname(cusname,proname);
	   mv.addObject("headlist", headlist);
	   mv.setViewName("chakan_zhuananxinxi");
	 return mv;
}
@RequestMapping("select_by_cusandpro2.do")
@ResponseBody
public ModelAndView selectByCusnameAndProname2(Model model,String cusname,String proname) throws ServletException, IOException{
	 List<Head>  headlist=new ArrayList<Head>();
	  ModelAndView mv=new ModelAndView();
	   headlist=iHeadService.selectByCusnameAndProname(cusname,proname);
	   mv.addObject("headlist", headlist);
	   mv.setViewName("zhuananxinxiweihu");
	 return mv;
}
//录入专案信息
@RequestMapping("insert_head.do")
@ResponseBody
public ModelAndView insertHead(Head head){
	 ModelAndView mv = new ModelAndView();
	 int rowCount=iHeadService.insertHead(head); 
	 if(rowCount>0){
		 List<Head>  headlist=new ArrayList<Head>();
		   headlist=iHeadService.selectAll();
	       mv.addObject("headlist",headlist);
	       mv.setViewName("zhuananxinxi1");
	       return mv;
	 }else{
		 mv.addObject("msg", "插入失败！");
		 mv.setViewName("zhuananxinxiluru");
		 return mv;
	 }
}
//跳转到专案信息录入页面
@RequestMapping("insert_zhuananxinxi.do")
@ResponseBody
public ModelAndView insertzhuananxinxi(){
	 ModelAndView mv = new ModelAndView();
		 mv.setViewName("zhuananxinxiluru");
	 return mv;
}
//维护页面
@RequestMapping("main_all_head.do")
@ResponseBody
public ModelAndView selectAllHeadMain(Model model) throws ServletException, IOException{
	   List<Head>  headlist=new ArrayList<Head>();
	   ModelAndView mv = new ModelAndView();
	   headlist=iHeadService.selectAll();
       mv.addObject("headlist",headlist);
       mv.setViewName("zhuananxinxiweihu");
       return mv;
		}
//删除head
@RequestMapping("delete_head.do")
@ResponseBody
public ServerResponse deleteHeadByid(int id){
	 int rowCount=iHeadService.deleteHeadByid(id);
	 int rowCountMsgs=iMessagesService.deleteMsgByid(id); 
	 if(rowCount>0){
		 return ServerResponse.createBySuccess("删除该检讨项目以及该项目下的"+rowCountMsgs +"条检讨信息！"); 
	 }
	 return ServerResponse.createByErrorMessage("删除失败！");
}
//查找一条信息
@RequestMapping("select_head_by_id.do")
@ResponseBody
public ModelAndView selectHeadByid(int id){
	 List<Head> headlist=new ArrayList<Head>();
	   ModelAndView mv = new ModelAndView();
	   headlist=iHeadService.selectOneHeadByid(id);
     //封装要显示到视图的数据
     mv.addObject("headlist",headlist);
     //视图名
     mv.setViewName("zhuananxinxigenxin");
     return mv;
}
//更新head
@RequestMapping("update_head.do")
@ResponseBody
public ModelAndView updateHead(Head head){
	 iHeadService.updateHead(head);
	 List<Head>  headlist=new ArrayList<Head>();
	   ModelAndView mv = new ModelAndView();
	   headlist=iHeadService.selectAll();
     mv.addObject("headlist",headlist);
     mv.setViewName("zhuananxinxiweihu");
     return mv;
}
//根据id查找专案信息，跳转到该专案信息下的添加界面
@RequestMapping("select_by_id.do")
@ResponseBody
public ModelAndView selectOneHeadByid(int id){
	 List<Head>  headlist=new ArrayList<Head>();
	   ModelAndView mv = new ModelAndView();
	   headlist=iHeadService.selectOneHeadByid(id);
	   mv.addObject("headid", id);
     mv.addObject("headlist",headlist);
     mv.setViewName("jiantaoxinxitianjia");
     return mv;
}
//跳转到检讨信息维护页面
@RequestMapping("main_all_msgs.do")
@ResponseBody
public ModelAndView selectHeadAllMsgsByid(int id){
	 List<Head>  headlist=new ArrayList<Head>();
	 List<Messages>  msgslist=new ArrayList<Messages>();
	   ModelAndView mv = new ModelAndView();
	   headlist=iHeadService.selectOneHeadByid(id);
	   msgslist=iHeadService.selectMsgsByHeadid(id);
	mv.addObject("msgslist",msgslist);
    mv.addObject("headlist",headlist);
    mv.setViewName("jiantao_main");
    return mv;
}

//跳转到专案信息查看页面
@RequestMapping("select_all_head.do")
@ResponseBody
public ModelAndView selectAllHead(){
	 List<Head>  headlist=new ArrayList<Head>();
	   ModelAndView mv = new ModelAndView();
	   //查找所有的专案信息
	   headlist=iHeadService.selectAll();
    mv.addObject("headlist",headlist);
    mv.setViewName("chakan_zhuananxinxi");
    return mv;
}

}



