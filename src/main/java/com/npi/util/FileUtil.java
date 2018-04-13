package com.npi.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import com.npi.controller.head.MessagesController;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class FileUtil {
	private static Logger logger = LoggerFactory.getLogger(MessagesController.class);
	public boolean saveFile(MultipartFile file,HttpServletRequest request){
		if(!file.isEmpty()){
			logger.info("文件不为空！");
				String savePath=request.getServletContext().getRealPath("/images/");
				String filename =file.getOriginalFilename();
				File filepath =new File(savePath,filename);
				if(!filepath.getParentFile().exists()){
					filepath.getParentFile().mkdirs();
				}
					try {
						file.transferTo(new File(savePath+File.separator+filename));
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				logger.info("上传成功！");
				return true;
			}
		logger.info("上传失败！");
		return false;
		}
	}
