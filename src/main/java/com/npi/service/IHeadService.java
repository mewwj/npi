package com.npi.service;

import java.util.List;

import com.npi.common.ServerResponse;
import com.npi.pojo.Head;
import com.npi.pojo.Messages;

public interface IHeadService {

	List<Head> selectAll();

	List<Head> selectByCusnameAndProname(String cusname, String proname);

	Integer insertHead(Head head);

	int deleteHeadByid(int id);

	int updateHead(Head head);

	List<Head> selectOneHeadByid(int id);

	List<Messages> selectMsgsById(int id);

	List<Messages> selectMsgsByHeadid(int id);

	int selectIdByCusnameAndProname(String cusname, String proname);



}
