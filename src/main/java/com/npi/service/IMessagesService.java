package com.npi.service;

import java.util.List;
import java.util.Map;

import com.npi.pojo.Messages;

public interface IMessagesService {

	int deleteMsgByid(int id);

	String selectuser(Integer userID);

	int insertBatch(List<Messages> msgsList);

	List<Messages> selectMsgByid(int id);

	List<Messages> selectMsgByIds(Integer[] ids);

	List<Messages> selectNoConfirmMessages(String name);

	int insertNoConfirmMsgs(String[] confirm, String[] affect, Integer[] id);

	int insertgaishanduice(List<Messages> msgsList);

	int deleteMsgsById(Integer id,String path);

	int deleteMsgsByIds(String[] ids,String path);

	List<Messages> selectOneMsgByid(Integer id);

	int updateMsgbyid(Messages messages);
}
