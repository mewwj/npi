package com.npi.dao;

import java.util.List;

import com.npi.pojo.Messages;

public interface ListMapper {

	Integer shejifangmiancount(int id);

	Integer ruanjianfangmiancount(int id);

	Integer gongyifangmiancount(int id);

	Integer zuoyefangmiancount(int id);

	Integer lailiaofangmiancount(int id);

	Integer kehufangmiancount(int id);

	Integer otherfangmiancount(int id);

	List<Messages> shejijigousoundbar(int id);

	List<Messages> shejijigouwoofer(int id);

	List<Messages> shejilabasoundbar(int id);

	List<Messages> shejilabawoofer(int id);

	List<Messages> shejibaozhuangsoundbar(int id);

	List<Messages> shejibaozhuangwoofer(int id);

	List<Messages> shejiothersoundbar(int id);

	List<Messages> shejiotherwoofer(int id);

	List<Messages> ruanjiansoundbar(int id);

	List<Messages> ruanjianwoofer(int id);

	List<Messages> gongyisoundbar(int id);

	List<Messages> gongyiwoofer(int id);

	List<Messages> zuoyesoundbar(int id);

	List<Messages> zuoyewoofer(int id);

	List<Messages> lailiaosoundbar(int id);

	List<Messages> lailiaowoofer(int id);

	List<Messages> kehusoundbar(int id);

	List<Messages> kehuwoofer(int id);

	List<Messages> otherfangmian(int id);

}
