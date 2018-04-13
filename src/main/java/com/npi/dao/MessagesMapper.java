package com.npi.dao;

import java.util.List;
import java.util.Map;

import com.npi.pojo.Messages;

public interface MessagesMapper {

	int deleteByPrimaryKey(Integer id);

	int insert(Messages record);

	int insertSelective(Messages record);

    List<Messages> selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Messages record);

    int updateByPrimaryKey(Messages record);

	String selectuser(Integer userID);

	int insertBatch(List<Messages> msgsList);

	List<Messages> selectMsgByIds(Integer[] ids);

	List<Messages> selectNoConfirmMessages(String name);

	int insertNoConfirmMsgs(List<Messages> messagesList);

	int insertgaishanduice(List<Messages> msgsList);

	String[] selectfileas(int id);

	String[] selectfileanames(String[] ids);
	
	int deleteMsgsByIds(String[] ids);

	String selectfilea(Integer id);

	List<Messages> selectMsgsByHeadid(int id);

}