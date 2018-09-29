package com.cufflink.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {
	
	//@Autowired
	ProjectLogic projectLogic;

	//������Ʈ �ӽ�����
	@RequestMapping("/project/projectSaved")
	public String projectSaved() {
		return "/clients/manage/project/projectSaved";
	}
	//������Ʈ ��Ͻ���
	@RequestMapping("/project/projectRejected")
	public String projectRejected() {
		return "/clients/manage/project/projectRejected";
	}
	
		
	//*********************************	Ŭ���̾�Ʈ �α��� �׺������ �޴�
	
	//������Ʈ �˼���
	@RequestMapping("/project/projectSubmitted")
	public String projectSubmitted() {
		return "/clients/manage/project/projectSubmitted";
	}
	//������Ʈ ������ ������
	@RequestMapping("/project/projectRecruiting")
	public String projectRecruiting() {
		return "/clients/manage/projectRecruiting";
	}
	//������Ʈ �������� ������Ʈ
	@RequestMapping("/project/projectContractInProgress")
	public String projectContractInProgress() {
		return "/clients/manage/projectContractInProgress";
	}
	//������Ʈ ����� ������Ʈ
	@RequestMapping("/project/projectReviewContract")
	public String projectReviewContract() {
		return "/clients/manage/projectReviewContract";
	}
	
	//������Ʈ �Ϸ�� ������Ʈ
	@RequestMapping("/project/projectCompletedContract")
	public String projectCompletedContract() {
		return "/clients/manage/projectCompletedContract";
	}
	//������Ʈ ����� ������Ʈ
	@RequestMapping("/project/projectCancelledProject")
	public String projectCancelledProject() {
		return "/clients/manage/projectCancelledProject";
	}
}
