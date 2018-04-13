package com.npi.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.npi.dao.MessagesMapper;
import com.npi.pojo.Messages;
import com.npi.service.IMessagesService;
@Service("iMessagesService")
public class MessagesServiceImpl  implements IMessagesService{
	
	
@Autowired 
private MessagesMapper messagesMapper;
	
public int deleteMsgByid(int id) {
	return messagesMapper.deleteByPrimaryKey(id);
}

public String selectuser(Integer userID) {
	return messagesMapper.selectuser(userID);
}

public int insertBatch(List<Messages> msgsList) {
	return messagesMapper.insertBatch(msgsList);
}

public List<Messages> selectMsgByid(int id) {
		return messagesMapper.selectByPrimaryKey(id);
}
public int insertgaishanduice(List<Messages> msgsList){
	return messagesMapper.insertgaishanduice(msgsList);
}

public List<Messages> selectMsgByIds(Integer[] ids) {
	return messagesMapper.selectMsgByIds(ids);
}

public List<Messages> selectNoConfirmMessages(String name) {
	return messagesMapper.selectNoConfirmMessages(name);
}

public int insertNoConfirmMsgs( String[] confirm, String[] affect, Integer[] id) {
	List<Messages> messagesList=new ArrayList<Messages>();
	Messages message=new Messages();
	for(int i=0;i<confirm.length;i++){
		message.setConfirm(confirm[i]);
		message.setAffect(affect[i]);
		message.setId(id[i]);
		messagesList.add(message);
	}
	return messagesMapper.insertNoConfirmMsgs(messagesList);
}


public int deleteMsgsById(Integer id,String path){
	String a=messagesMapper.selectfilea(id);
		File file =new File(path+a);
		if(file.exists()&&file.isFile()){
			file.delete();
		}
	return messagesMapper.deleteByPrimaryKey(id);
}

public int deleteMsgsByIds(String[] ids,String path){
	String[] msgs=messagesMapper.selectfileanames(ids);
	for(String a:msgs){
		File file =new File(path+a);
		if(file.exists()&&file.isFile()){
			file.delete();
		}
}
	return messagesMapper.deleteMsgsByIds(ids);
}

public List<Messages> selectOneMsgByid(Integer id) {
	return messagesMapper.selectByPrimaryKey(id);
}
//修改检讨信息
public int updateMsgbyid(Messages messages) {
	return messagesMapper.updateByPrimaryKeySelective(messages);
}


}
