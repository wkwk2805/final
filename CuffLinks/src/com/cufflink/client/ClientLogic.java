package com.cufflink.client;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClientLogic {
	
	Logger logger = Logger.getLogger(ClientLogic.class);
	@Autowired
	ClientDao clientDao = null;
	
	public int Idcheck(Map<String,Object> pMap) {
		
		return clientDao.IdExit(pMap);
	}
	
	public Map<String,Object> ClientLogin(Map<String,Object> pMap) {
		int IdExit = 0;
		IdExit     = clientDao.IdExit(pMap);
		
		//���̵� �����ϸ�  ��й�ȣ�� �´��� ó��
		//-1 ���̵� ���� 0 ��й�ȣ������ 1�̸� ����
		
		if(IdExit==1) {
			pMap = clientDao.login(pMap);
			return pMap;
		
		}
		//���̵� �������� �ʴٰ� ó���Ѵ� .
		pMap.put("Idcheck", -1);
		return pMap;
		
		
	}


	public int join(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		int IdExit = 0;
		clientDao.join(pMap);
		return IdExit;
		
	}

	public int Njoin(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		int IdExit = 0;
		clientDao.Njoin(pMap);
		return IdExit;
		
	}
	public int Emailcheck(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		return  clientDao.EmailExit(pMap);
	}

	public int NaverCapchar(Map<String, Object> pMap) {
		
		logger.info("NaverCapchar ȣ�� ����");
		pMap.put("f_email", pMap.get("j_email"));
		int result = clientDao.EmailExit(pMap);

		return result;
		
	}

	public String proc_board_test(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		logger.info("proc_board_test");
		
		String msg = null;
		clientDao.proc_board_test(pMap);
		
		return "";
	}

	public void UserUpdate(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		clientDao.UserUpdate(pMap);
		
	}
	
}
