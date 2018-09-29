package com.cufflink.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller()
public class AuthController {

	//@Autowired
	AuthController authcontroller;
	
	//�α���
	@RequestMapping("/auth/login")
	public String login() {
		return "auth/login";
	}
	//Ÿ��α���
	@RequestMapping("/auth/otherJoin")
	public String otherJoin() {
		return "auth/otherJoin";
	}
	//�α��μ���
	@RequestMapping("/auth/loginSuccess")
	public String loginSuccess() {
		return "auth/loginSuccess";
	}
	//ȸ������
	@RequestMapping("/auth/join")
	public String join() {
		return "auth/join";
	}
	
	//�������� - �⺻���� 
	@RequestMapping("/auth/ClientProfile")
	public String ClientProfile() {
		return "/auth/clientSettings/ClientProfile";
	}
	//�������� - ���°���
	@RequestMapping("/auth/ClientBankAccount")
	public String ClientBankAccount() {
		return "/auth/clientSettings/ClientBankAccount";
	}
	//�������� - ��������������
	@RequestMapping("/auth/ClientAddcoin")
	public String ClientAddcoin() {
		return "/auth/clientSettings/ClientAddcoin";
	}
	//�������� - ��й�ȣ����
	@RequestMapping("/auth/ClientRelogin")
	public String ClientRelogin() {
		return "/auth/clientSettings/ClientRelogin";
	}
	//�������� - �˸�����
	@RequestMapping("/auth/ClientNotificationSetting")
	public String ClientNotificationSetting() {
		return "/auth/clientSettings/ClientNotificationSetting";
	}
	//�������� - ȸ��Ż��
	@RequestMapping("/auth/ClientWithdrawal")
	public String ClientWithdrawal() {
		return "/auth/clientSettings/ClientWithdrawal";
	}
	
	//*********************************	Ŭ���̾�Ʈ �α��� ���� Ŭ���̾�Ʈ �����޴�
	
	//�޴����� ���� �����ν�
	@RequestMapping("/auth/fingerprint")
	public String fingerprint() {
		return "/auth/fingerprint";
	}
	//��й�ȣã��
	@RequestMapping("/auth/idpassfind")
	public String idpassfind() {
		return "/auth/idpassfind";
	}
	//qr�ڵ�
	@RequestMapping("/auth/qrcode")
	public String qrcode() {
		return "/auth/qrcode";
	}
}
