package com.cufflink.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/clients")
public class ClientController {
	
	//@Autowired
	ClientLogic clientLogic;
	

	//*********************************	Ŭ���̾�Ʈ �α��� �׺������ �˼� �����޴�
	
	//������Ʈ �˼���
	//�׺�������� �˼��߸޴��� ����
	
	//������Ʈ �ӽ�����
	@RequestMapping("/projectSaved")
	public String projectSaved() {
		return "/clients/manage/project/projectSaved";
	}
	//������Ʈ ��Ͻ���
	@RequestMapping("/projectRejected")
	public String projectRejected() {
		return "/clients/manage/project/projectRejected";
	}
	
	//������Ʈ ����� ������Ʈ
	//�׺�������� ����� ������Ʈ �޴��� ����
	
	//������Ʈ �Ϸ�� ������Ʈ
	@RequestMapping("/projectCompletedContract")
	public String projectCompletedContract() {
		return "/clients/manage/projectCompletedContract";
	}
	//������Ʈ ����� ������Ʈ
	@RequestMapping("/projectCancelledProject")
	public String projectCancelledProject() {
		return "/clients/manage/projectCancelledProject";
	}
	
	//*********************************	Ŭ���̾�Ʈ �α��� ���� Ŭ���̾�Ʈ �����޴�	

	//���� Ŀ����ũ
	@RequestMapping("/ClientMyCufflink")
	public String ClientMyCufflink() {
		return "/clients/ClientMyCufflink";
	}
	
	//������Ʈ ã��
	@RequestMapping("/projectFind")
	public String projectFind() {
		return "clients/projectFind";
	}
	//������Ʈ ���
	@RequestMapping("/projectRegister")
	public String projectRegister() {
		return "clients/projectRegister";
	}
	
	//---------------------------------------
	//������Ʈ Ŭ���̾�Ʈ ����
	@RequestMapping("/ClientInfo")
	public String ClientInfo() {
		return "/clients/info/ClientInfo";
	}
	//������Ʈ Ŭ���̾�Ʈ �������
	@RequestMapping("/ClientInfoUpdate")
	public String ClientInfoUpdate() {
		return "/clients/info/ClientInfoUpdate";
	}
	//������Ʈ ������Ʈ �����丮
	@RequestMapping("/ClientProjectHistory")
	public String ClientProjectHistory() {
		return "/clients/ClientProjectHistory";
	}	
	
}
