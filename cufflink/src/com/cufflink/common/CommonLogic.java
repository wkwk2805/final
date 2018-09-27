package com.cufflink.common;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service //CommonController�� ���� @Autowired

public class CommonLogic {

	@Autowired // CommonDao�� ������ ���� Service����
	
	CommonDao commonDao;
	
	public Map<String,Object> map(){
		Map<String,Object> map = new HashMap<>();
		map = commonDao.getList();
		return map;
	}
}
