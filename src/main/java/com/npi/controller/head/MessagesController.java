package com.npi.controller.head;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections4.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.npi.common.ServerResponse;
import com.npi.pojo.Head;
import com.npi.pojo.Messages;
import com.npi.service.IHeadService;
import com.npi.service.IMessagesService;
import com.npi.util.ExportExcel;
import com.npi.util.FileUtil;

@Controller
@RequestMapping("/msgs/")
public class MessagesController {
	private static Logger logger = LoggerFactory.getLogger(MessagesController.class);
	
	@Autowired
	private IHeadService iHeadService;
	
	@Autowired
	private IMessagesService iMessagesService;
	//批量添加检讨信息
@RequestMapping("insert_messages")	
@ResponseBody
public ModelAndView insertMessagesAndFiles(int id,@RequestParam("pic")MultipartFile[] pic,String[] problems,String[] ng,
		String[] defectlevels,String[] head,String[] plantime,String insproject,String item,String items,Integer UserID
		,HttpServletRequest request){
			FileUtil file=new FileUtil();
		List<Messages> msgsList= new ArrayList<Messages>();
			String exh=iMessagesService.selectuser(UserID);
			for(int i=0;i<problems.length;i++){
				Messages msgs=new Messages();
				msgs.setHeadid(id);
				msgs.setFilenamea(pic[i].getOriginalFilename());
				MultipartFile filea= pic[i];
				file.saveFile(filea, request);
				msgs.setExhibitor(exh);
				msgs.setProblems(problems[i]);
				msgs.setNg(ng[i]);
				msgs.setDefectlevels(defectlevels[i]);
				msgs.setHead(head[i]);
				msgs.setPlantime(plantime[i]);
				msgs.setInsproject(insproject);
				msgs.setItem(item);
				msgs.setItems(items);
				msgsList.add(msgs);
			}
			int rowCount = iMessagesService.insertBatch(msgsList);
			List<Head>  headlist=new ArrayList<Head>();
			ModelAndView mv = new ModelAndView();
			headlist=iHeadService.selectOneHeadByid(id);
	if(rowCount >0 ){
		mv.addObject("headlist",headlist);
		mv.addObject("msg","录入成功！");
		mv.setViewName("jiantaoxinxitianjia");
		return mv;
	}else{
		mv.addObject("headlist",headlist);
		mv.addObject("msg","录入失败！");
		mv.setViewName("jiantaoxinxitianjia");
		return mv;
	}
}	


//根据专案信息id查找检讨信息,
@RequestMapping("selectmsgs_by_id")	
@ResponseBody
public ModelAndView selectMsgsByid(int id){
	List<Messages> msgsList=new ArrayList<Messages>();
	List<Head> headlist=new ArrayList<Head>();
	 headlist=iHeadService.selectOneHeadByid(id);
	ModelAndView mv=new ModelAndView();
	msgsList=iHeadService.selectMsgsById(id);
	mv.addObject("headlist", headlist);
	mv.addObject("msgsList", msgsList);
	mv.setViewName("jiantao_gaishanduice");
	return mv;
}

//为添加改善对策查找一条信息
@RequestMapping("select_for_gaishan")	
@ResponseBody
public ModelAndView selectMsgByid(int id){
	List<Messages> msgsList=new ArrayList<Messages>();
	List<Head> headList= new ArrayList<Head>(); 
	ModelAndView mv=new ModelAndView();
	msgsList=iMessagesService.selectMsgByid(id);
	headList=iHeadService.selectOneHeadByid(id);
	if(msgsList.size()>0){
	mv.addObject("msgsid", msgsList.get(0).getId());
	mv.addObject("msgsheadid", msgsList.get(0).getHeadid());
	}
	mv.addObject("msgsList", msgsList);
	mv.addObject("headlist", headList);
	mv.setViewName("jiantao_gaishanduice");
	return mv;
}
//插入改善对策
@RequestMapping("insert_gaishanduice.do")	
@ResponseBody
public ModelAndView insertgaishanduice(String[] measures,String[] reasons,Integer[] id,Integer headid){
	MessagesController messageController=new MessagesController();
	Messages message=new Messages();
	List<Messages> msgsList=new ArrayList<Messages>();
	for(int i=0;i<measures.length;i++){
		message.setMeasures(measures[i]);
		message.setReasons(reasons[i]);
		message.setId(id[i]);
		msgsList.add(message);
	}
	ModelAndView mv=new ModelAndView();
	iMessagesService.insertgaishanduice(msgsList);
	return messageController.selectMsgsByid(headid);
}
//根据传入的id，导出数据到excel.
@RequestMapping("export_jiantaoxinxi")	
@ResponseBody
public void exportjiantaoxinxi(HttpServletRequest request, HttpServletResponse response,Integer[] id){
       try {
         String columnNames[] = {"检讨项目","","","不良问题点","不良数","缺陷等级","原因分析","改善对策","提出人",
         		"责任人","计划时间","完成时间","效果确认","成本影响"};// 列名
         String keys[] = { "insproject","item","items","problems","ng","defectlevels","reasons","measures", 
        		 "exhibitor", "head", "plantime", "finishtime", "confirm", "affect"};// map中的key
         int[] ds_format={1,1,1,1,1,1,1,1,1,1,1,1,1,1};
         //查询结果，循环添加到map
         List<Messages> msgslist =iMessagesService.selectMsgByIds(id);
         System.out.println(msgslist.size());
         	logger.info(msgslist.toString());
         	List<Map<String,Object>> userMap = new ArrayList<Map<String,Object>>();  
         if(CollectionUtils.isNotEmpty(msgslist)){  
             for(Messages message : msgslist){  
                 Map<String,Object> map = new HashMap<String,Object>();  
                 map.put("insproject", message.getInsproject());  
                 map.put("item",message.getItem());  
                 map.put("items", message.getItems());  
                 map.put("problems", message.getProblems()); 
                 map.put("ng", message.getNg()); 
                 map.put("defectlevels", message.getDefectlevels()); 
                 map.put("reasons", message.getReasons()); 
                 map.put("measures", message.getMeasures()); 
                 map.put("exhibitor", message.getExhibitor()); 
                 map.put("head", message.getHead()); 
                 map.put("plantime", message.getPlantime()); 
                 map.put("finishtime", message.getFinishtime()); 
                 map.put("confirm", message.getConfirm()); 
                 map.put("affect", message.getAffect()); 
                 userMap.add(map);  
             }  
         }  
         ExportExcel.export("导出数据表", null, columnNames, keys, ds_format, null, userMap, request, response);  
       } catch (Exception e) {
    	   logger.info(e.toString());
       }
}
//未进行效果确认的检讨信息的查询
@RequestMapping("select_noconfirm.do")	
@ResponseBody
public ModelAndView selectNoConfirmMessages(Integer UserID){
	String name=iMessagesService.selectuser(UserID);
	name= new StringBuilder().append("%").append(name).append("%").toString();
	List<Messages> messagesList=new ArrayList<Messages>();
	messagesList = iMessagesService.selectNoConfirmMessages(name);
	ModelAndView mv=new ModelAndView();
	mv.addObject("messagesList", messagesList);
	mv.setViewName("jiantao_nocofirmmsgs");
	return mv;
}
//进行效果确认
@RequestMapping("insert_noconfirm.do")	
@ResponseBody
public void insertNoConfirmMsgs(String[] confirm,String[] affect,Integer[] id,Integer UserID){
	int rowcount=iMessagesService.insertNoConfirmMsgs(confirm, affect, id);
	MessagesController messageController=new MessagesController();
	messageController.selectNoConfirmMessages(UserID);
}

//删除1条数据，根据id
@RequestMapping("delete_by_id.do")	
@ResponseBody
public ServerResponse deleteMsgsById(Integer id,HttpServletRequest request){
	String path=request.getServletContext().getRealPath("/images/");
	int rowcount=iMessagesService.deleteMsgsById(id,path);
	if(rowcount>0){
		return ServerResponse.createBySuccessMessage("成功删除"+rowcount+"条数据！");
	}else{
		return ServerResponse.createByErrorMessage("删除0条数据！");
	}
}
//删除多条数据
@RequestMapping("delete_by_ids.do")	
@ResponseBody
public ServerResponse deleteMsgsByIds(String[] ids,HttpServletRequest request){
	String path=request.getServletContext().getRealPath("/images/");
	int rowcount=iMessagesService.deleteMsgsByIds(ids,path);
	if(rowcount>0){
		return ServerResponse.createBySuccessMessage("成功删除"+rowcount+"条数据！");
	}else{
		return ServerResponse.createByErrorMessage("删除0条数据！");
	}
}
//查找一条检讨信息，做修改
@RequestMapping("select_by_id.do")	
@ResponseBody
public ModelAndView selectMsgByid(Integer id){
	List<Messages> msgsList =new ArrayList<Messages>();
	ModelAndView mv=new ModelAndView();
	msgsList = iMessagesService.selectOneMsgByid(id);
	mv.addObject("msgsList", msgsList);
	mv.setViewName("jiantao_genxinxiugai");
	return mv;
}
//更新检讨信息
@RequestMapping("update_msgby_id.do")	
@ResponseBody
public void updateMsgbyid(Messages  messages){
	HeadController headController=new HeadController();
	iMessagesService.updateMsgbyid(messages);
	headController.selectHeadAllMsgsByid(messages.getHeadid());
}
//根据headid查找检讨信息，跳转到检讨信息页面
@RequestMapping("select_jiantao.do")	
@ResponseBody
public ModelAndView selectMsgsByid(Integer id){
	List<Messages> msgsList =new ArrayList<Messages>();
	List<Head> headList =new ArrayList<Head>();
	ModelAndView mv=new ModelAndView();
	headList = iHeadService.selectOneHeadByid(id);
	msgsList = iHeadService.selectMsgsByHeadid(id);
	mv.addObject("msgslist", msgsList);
	mv.addObject("headlist", headList);
	mv.setViewName("chakan_jiantaoxinxi");
	return mv;
	}


}












