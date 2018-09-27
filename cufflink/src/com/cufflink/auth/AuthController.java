package com.cufflink.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller()
@RequestMapping("/auth")
public class AuthController {

	//@Autowired
	AuthController authcontroller;
	
	//�α���
	@RequestMapping("/login")
	public String login() {
		return "auth/login";
	}
	//Ÿ��α���
	@RequestMapping("/otherJoin")
	public String otherJoin() {
		return "auth/otherJoin";
	}
	//�α��μ���
	@RequestMapping("/loginSuccess")
	public String loginSuccess() {
		return "auth/loginSuccess";
	}
	//ȸ������
	@RequestMapping("/join")
	public String join() {
		return "auth/join";
	}
	
	//�������� - �⺻���� 
	@RequestMapping("/ClientProfile")
	public String ClientProfile() {
		return "/auth/clientSettings/ClientProfile";
	}
	//�������� - ���°���
	@RequestMapping("/ClientBankAccount")
	public String ClientBankAccount() {
		return "/auth/clientSettings/ClientBankAccount";
	}
	//�������� - ��������������
	@RequestMapping("/ClientAddcoin")
	public String ClientAddcoin() {
		return "/auth/clientSettings/ClientAddcoin";
	}
	//�������� - ��й�ȣ����
	@RequestMapping("/ClientRelogin")
	public String ClientRelogin() {
		return "/auth/clientSettings/ClientRelogin";
	}
	//�������� - �˸�����
	@RequestMapping("/ClientNotificationSetting")
	public String ClientNotificationSetting() {
		return "/auth/clientSettings/ClientNotificationSetting";
	}
	//�������� - ȸ��Ż��
	@RequestMapping("/ClientWithdrawal")
	public String ClientWithdrawal() {
		return "/auth/clientSettings/ClientWithdrawal";
	}
	
	//*********************************	Ŭ���̾�Ʈ �α��� ���� Ŭ���̾�Ʈ �����޴�
	
	//�޴����� ���� �����ν�
	@RequestMapping("/fingerprint")
	public String fingerprint() {
		return "/auth/fingerprint";
	}
	//��й�ȣã��
	@RequestMapping("/idpassfind")
	public String idpassfind() {
		return "/auth/idpassfind";
	}
	//qr�ڵ�
	@RequestMapping("/qrcode")
	public String qrcode() {
		return "/auth/qrcode";
	}
}
