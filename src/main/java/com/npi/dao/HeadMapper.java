package com.npi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.npi.pojo.Head;

public interface HeadMapper {

    int deleteByPrimaryKey(Integer id);

	int insert(Head record);

    int insertSelective(Head record);

    List<Head>  selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Head record);

    int updateByPrimaryKey(Head record);
    
    List<Head> selectAll();
    
    List<Head> selectByCusnameAndProname(@Param("cusname")String cusname,@Param("proname")String proname);

	int insertHead(Head head);

	int deleteByPrimaryKey(int id);

	int selectIdByCusnameAndProname(@Param("cusname")String cusname,@Param("proname")String proname);
    
}


