package com.cufflink.common;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainPage {

	Logger logger = Logger.getLogger(MainPage.class);
	@Autowired
	MainLogic mainLogic = null;

	@RequestMapping("/map")
	public String map() {

		return "map/Mapdisplay";
	}
	@RequestMapping("/newfile")
	public String newfile() {
		return "test/NewFile";
	}
	@RequestMapping("/newfile1")
	public String newfile1() {
		return "test/NewFile1";
	}
	

	@RequestMapping("/")
	public String mainpage() {
		List<Map<String,Object>> pMap = null;
		pMap = mainLogic.MainProject();
		
		return "common/main";
	}


/*	@RequestMapping("/login")
	public String login() {
		return "auth/login";
	}*/
	
	@RequestMapping("/loginSuccess")
	public String loginSuccess() {
		return "auth/loginSuccess";
	}

/*	@RequestMapping("/join")
	public String join() {
		return "auth/join";
	}*/

	@RequestMapping("/projectFind")
	public String projectFind() {
		return "clients/projectFind";
	}

	@RequestMapping("/projectRegister")
	public String projectRegister() {
		return "clients/projectRegister";
	}

	@RequestMapping("/partnersList")
	public String partnersList() {
		return "partners/partnersList";
	}	
	
	@RequestMapping("/projectSubmitted")
	public String projectSubmitted() {
		return "/clients/manage/project/projectSubmitted";
	}

	@RequestMapping("/projectRecruiting")
	public String projectRecruiting() {
		return "/clients/manage/projectRecruiting";
	}

	@RequestMapping("/projectContractInProgress")
	public String projectContractInProgress() {
		return "/clients/manage/projectContractInProgress";
	}

	@RequestMapping("/projectReviewContract")
	public String projectReviewContract() {
		return "/clients/manage/projectReviewContract";
	}

	@RequestMapping("/projectSaved")
	public String projectSaved() {
		return "/clients/manage/project/projectSaved";
	}

	@RequestMapping("/projectRejected")
	public String projectRejected() {
		return "/clients/manage/project/projectRejected";
	}

	

	@RequestMapping("/projectCompletedContract")
	public String projectCompletedContract() {
		return "/clients/manage/projectCompletedContract";
	}

	@RequestMapping("/projectCancelledProject")
	public String projectCancelledProject() {
		return "/clients/manage/projectCancelledProject";
	}


	@RequestMapping("/ClientMyCufflink")
	public String ClientMyCufflink() {
		return "/clients/ClientMyCufflink";
	}

	@RequestMapping("/ClientInfo")
	public String ClientInfo() {
		return "/clients/info/ClientInfo";
	}

	@RequestMapping("/ClientInfoUpdate")
	public String ClientInfoUpdate() {
		return "/clients/info/ClientInfoUpdate";
	}

	@RequestMapping("/ClientProjectHistory")
	public String ClientProjectHistory() {
		return "/clients/ClientProjectHistory";
	}	
	//---------------------------------------

	@RequestMapping("/ClientProfile")
	public String ClientProfile() {
		return "/auth/settings/ClientProfile";
	}

	@RequestMapping("/ClientBankAccount")
	public String ClientBankAccount() {
		return "/auth/settings/ClientBankAccount";
	}

	@RequestMapping("/ClientAddcoin")
	public String ClientAddcoin() {
		return "/auth/settings/ClientAddcoin";
	}

	@RequestMapping("/ClientRelogin")
	public String ClientRelogin() {
		return "/auth/settings/ClientRelogin";
	}

	@RequestMapping("/ClientNotificationSetting")
	public String ClientNotificationSetting() {
		return "/auth/settings/ClientNotificationSetting";
	}

	@RequestMapping("/ClientWithdrawal")
	public String ClientWithdrawal() {
		return "/auth/settings/ClientWithdrawal";
	}

	@RequestMapping("/fingerprint")
	public String fingerprint() {
		return "/auth/fingerprint";
	}

	@RequestMapping("/idpassfind")
	public String idpassfind() {
		return "/auth/idpassfind";
	}
	@RequestMapping("/loginOk")
	public String loginstart() {
		return "/auth/loginOk";
	}

	@RequestMapping("/qrcode")
	public String qrcode() {
		return "/auth/qrcode";
	}

	@RequestMapping("/chat")
	public String chat() {
		return "/chat/chat";
	}

	@RequestMapping("/adminLogin")
	public String adminLogin() {
		return "/admin/adminLogin";
	}

	@RequestMapping("/adminMain")
	public String adminMain() {
		return "/admin/adminMain";
	}

	@RequestMapping("/adminLoginFind")
	public String adminLoginFind() {
		return "/admin/adminLoginFind";
	}
		


}
