package com.npi.common;

import java.util.Set;

import com.google.common.collect.Sets;

public class Const {
    public static final String CURRENT_USER="currentuser";
     
    public static final String EMAIL="email";
    public static final String USERNAME="username";
    
    public interface ProductListOrderBy{
    	Set<String> PRICE_ASC_DESC= Sets.newHashSet("price_desc","price_asc");
    }
    
   // ���ﳵ
    public interface Cart{
    	int CHECKED =1; //���ﳵѡ��״̬
    	int UN_CHECKED=0;  //���ﳵδѡ��״̬
    	
    	String LIMIT_NUM_FAIL="LIMIT_NUM_FAIL";
    	String LIMIT_NUM_SUCCESS="LIMIT_NUM_SUCCESS";
    	
    }
    
    
    public interface Role{
    	int ROLE_CUSTOMER=0; //��ͨ�û�
    	int ROLE_ADMIN=1;  // ����Ա
    }
    
    public enum ProductStatusEnum{
    	ON_SALE(1,"����");
    	private String value;
    	private int code;
    	
    	ProductStatusEnum(int code,String value){
    		this.code=code;
    		this.value=value; 
    	}

		public String getValue() {
			return value;
		}

		public int getCode() {
			return code;
		}

    }
}
