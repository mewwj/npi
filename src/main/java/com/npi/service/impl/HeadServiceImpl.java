package com.npi.service.impl;

import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.npi.dao.HeadMapper;
import com.npi.dao.MessagesMapper;
import com.npi.pojo.Head;
import com.npi.pojo.Messages;
import com.npi.service.IHeadService;
@Service("iHeadService")
public class HeadServiceImpl implements IHeadService {
	@Autowired 
	private HeadMapper headMapper;

	@Autowired 
	private MessagesMapper messagesMapper;
	
public List<Head> selectAll() {
		List<Head>  headlist=new ArrayList<Head>();
		headlist=headMapper.selectAll();
		return headlist;
	}
//根据客户名称跟专案名称筛选
public List<Head> selectByCusnameAndProname(String cusname, String proname) {
		List<Head>  headlist=new ArrayList<Head>();
		headlist=headMapper.selectByCusnameAndProname(cusname,proname);
		return headlist;
	}
//录入项目信息
public Integer insertHead(Head head) {
		String a1=head.getNumber();
		int a=Integer.valueOf(a1);
		String b1=head.getGoodnumber();
		int b=Integer.valueOf(b1);
		DecimalFormat df=new DecimalFormat("#.0000");
		Double c1=Double.valueOf(df.format((float)b/a));
		String goodrate=c1*100+"%";
		head.setGoodrate(goodrate);
		return headMapper.insertHead(head);
	}
public int deleteHeadByid(int id) {
	String[] msgs=messagesMapper.selectfileas(id);
	for(String a:msgs){
		File file =new File("E:/file/"+a);
		if(file.exists()&&file.isFile()){
			file.delete();
		}
	}
	return headMapper.deleteByPrimaryKey(id);
	}

public int updateHead(Head head) {
	String a1=head.getNumber();
	int a=Integer.valueOf(a1);
	String b1=head.getGoodnumber();
	int b=Integer.valueOf(b1);
	DecimalFormat df=new DecimalFormat("#.0000");
	Double c1=Double.valueOf(df.format((float)b/a));
	String goodrate=c1*100+"%";
	head.setGoodrate(goodrate);
	return headMapper.updateByPrimaryKeySelective(head);
}

public List<Head> selectOneHeadByid(int id){
	List<Head>  headlist=new ArrayList<Head>();
	headlist=headMapper.selectByPrimaryKey(id);
	return headlist;
}
public List<Messages> selectMsgsById(int id){
	List<Messages>  Msgslist=new ArrayList<Messages>();
	Msgslist=messagesMapper.selectByPrimaryKey(id);
	return Msgslist;
}
public List<Messages> selectMsgsByHeadid(int id){
	List<Messages>  Msgslist=new ArrayList<Messages>();
	Msgslist=messagesMapper.selectMsgsByHeadid(id);
	return Msgslist;
}
@Override
public int selectIdByCusnameAndProname(String cusname, String proname) {
	return headMapper.selectIdByCusnameAndProname(cusname,proname);
}



}
