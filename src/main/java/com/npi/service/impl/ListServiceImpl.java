package com.npi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.npi.dao.ListMapper;
import com.npi.pojo.Messages;
import com.npi.service.IListService;
@Service("iListService")
public class ListServiceImpl implements IListService {
	@Autowired 
	private ListMapper listMapper;
	public Integer shejifangmiancount(int id) {
		return listMapper.shejifangmiancount(id);
	}

	public Integer ruanjianfangmiancount(int id) {
		return listMapper.ruanjianfangmiancount(id);
	}

	public Integer gongyifangmiancount(int id) {
		return listMapper.gongyifangmiancount(id);
	}

	public Integer zuoyefangmiancount(int id) {
		return listMapper.zuoyefangmiancount(id);
	}

	public Integer lailiaofangmiancount(int id) {
		return listMapper.lailiaofangmiancount(id);
	}

	public Integer kehufangmiancount(int id) {
		return listMapper.kehufangmiancount(id);
	}

	public Integer otherfangmiancount(int id) {
		return listMapper.otherfangmiancount(id);
	}

	public List<Messages> shejijigousoundbar(int id) {
		return listMapper.shejijigousoundbar(id);
	}

	public List<Messages> shejijigouwoofer(int id) {
		return listMapper.shejijigouwoofer(id);
	}

	public List<Messages> shejilabasoundbar(int id) {
		return listMapper.shejilabasoundbar(id);
	}

	public List<Messages> shejilabawoofer(int id) {
		return listMapper.shejilabawoofer(id);
	}

	public List<Messages> shejibaozhuangsoundbar(int id) {
		return listMapper.shejibaozhuangsoundbar(id);
	}

	public List<Messages> shejibaozhuangwoofer(int id) {
		return listMapper.shejibaozhuangwoofer(id);
	}

	public List<Messages> shejiothersoundbar(int id) {
		return listMapper.shejiothersoundbar(id);
	}

	public List<Messages> shejiotherwoofer(int id) {
		return listMapper.shejiotherwoofer(id);
	}

	public List<Messages> ruanjiansoundbar(int id) {
		return listMapper.ruanjiansoundbar(id);
	}

	public List<Messages> ruanjianwoofer(int id) {
		return listMapper.ruanjianwoofer(id);
	}

	public List<Messages> gongyisoundbar(int id) {
		return listMapper.gongyisoundbar(id);
	}

	public List<Messages> gongyiwoofer(int id) {
		return listMapper.gongyiwoofer(id);
	}

	public List<Messages> zuoyesoundbar(int id) {
		return listMapper.zuoyesoundbar(id);
	}

	public List<Messages> zuoyewoofer(int id) {
		return listMapper.zuoyewoofer(id);
	}

	public List<Messages> lailiaosoundbar(int id) {
		return listMapper.lailiaosoundbar(id);
	}

	public List<Messages> lailiaowoofer(int id) {
		return listMapper.lailiaowoofer(id);
	}

	public List<Messages> kehusoundbar(int id) {
		return listMapper.kehusoundbar(id);
	}

	public List<Messages> kehuwoofer(int id) {
		return listMapper.kehuwoofer(id);
	}

	public List<Messages> otherfangmian(int id) {
		return listMapper.otherfangmian(id);
	}

}
