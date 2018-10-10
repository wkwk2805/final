package com.cufflink.naver;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import javax.mail.*; 
import javax.mail.internet.*;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cufflink.client.ClientLogic;
import com.google.gson.Gson;

import sun.security.action.GetLongAction;


@RestController
public class NaverMainPage {

	Logger logger = Logger.getLogger(NaverMainPage.class);
	
	@Autowired
	ClientLogic clientLogic = null;
	
	@RequestMapping("/capcharImage")
	public String CapcharImage() {
		
		String clientId = "STRz_HFXTVKfVSG1UmFr";//���ø����̼� Ŭ���̾�Ʈ ���̵�";
		String clientSecret = "VZFx_ckvxe";//���ø����̼� Ŭ���̾�Ʈ ��ũ����";
		StringBuffer respon = new StringBuffer();
		String keyValue = "";	
		
		try {
	        String code = "0"; // Ű �߱޽� 0,  ĸ�� �̹��� �񱳽� 1�� ����
	        String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code;
	        URL url = new URL(apiURL);
	        HttpURLConnection con = (HttpURLConnection)url.openConnection();
	        con.setRequestMethod("GET");
	        con.setRequestProperty("X-Naver-Client-Id", clientId);
	        con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
	        int responseCode = con.getResponseCode();
	        BufferedReader br;
	        if(responseCode==200) { // ���� ȣ��
	            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	        } else {  // ���� �߻�
	            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	        }
	        String inputLine;
	       
	        while ((inputLine = br.readLine()) != null) {
	            respon.append(inputLine);
	        }
	        br.close();
	        keyValue = respon.toString();
	        keyValue = keyValue.substring(8,24);

	    } catch (Exception e) {
	        System.out.println(e);
	    }
		
		return keyValue;
	
	}
	
	@RequestMapping("/capcharValue")
	public String CapcharValue(HttpServletRequest req,@RequestParam Map<String,Object> pMap) {
		
		String key = req.getParameter("key");
		String value = req.getParameter("value");
		String clientId = "LHm4jSIfeEAlKgRvLHJ4";//���ø����̼� Ŭ���̾�Ʈ ���̵�";
		String clientSecret = "0iy3LYcgxl";//���ø����̼� Ŭ���̾�Ʈ ��ũ����";
		String a ="";
		try {
		    String code = "1"; // Ű �߱޽� 0,  ĸ�� �̹��� �񱳽� 1�� ����
		    String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code +"&key="+ key + "&value="+ value;

		    URL url = new URL(apiURL);
		    HttpURLConnection con = (HttpURLConnection)url.openConnection();
		    con.setRequestMethod("GET");
		    con.setRequestProperty("X-Naver-Client-Id", clientId);
		    con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
		    int responseCode = con.getResponseCode();
		    BufferedReader br;
		    if(responseCode==200) { // ���� ȣ��
		        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		    } else {  // ���� �߻�
		        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		    }
		    String inputLine;
		    StringBuffer respon = new StringBuffer();
		    while ((inputLine = br.readLine()) != null) {
		        respon.append(inputLine);
		    }
		    br.close();

		    a = respon.toString();
		    a = a.substring(10,15);

		System.out.print(a);
		} catch (Exception e) {
		    System.out.println(e);
		}
		if(a.equals("false")){

			return "5";
		}
		else if(a.equals("true,")){

			return "4";
		}
		return a;
		
	}
	
	@RequestMapping("/email")
	public int EmailCheck(HttpServletRequest req) throws MessagingException {
	
		 String num = String.valueOf((int)(Math.random()*10000+Math.random()*1000+Math.random()*100+Math.random()*10));
		 String id  = req.getParameter("f_email_check");
		 String smtpServer= "smtp.naver.com";
		   final String sendId = "cufflink0828";
		   final String sendPass = "7YsSwj";
		   String sendMailAddr = "cufflink0828@naver.com";
		   int smtpPort=465;

		   logger.info(id+"----------------------------------------");
		   
		   //�޴� ��
		   String receiveMailAddr = id;
		   String subject = "�ȳ��ϼ��� Cufflink �Դϴ�.";
		   String message="<html><head></head>";
		   message+="<body><table style='width: 500px; height: 500px;'><tr><td style = 'background-color:#5882FA; color:white'>"+
			        "<h1>CuffLink ���� �ڵ�</h1> </td></tr><tr><td style = 'background-color:#EFF5FB;''>"+
			        "Cufflink ����ڴ�. <b></b> ������ �̸���("+id+") �ּҸ� ���� CuffLink ���� �� ���� �������� ��û�Ǿ����ϴ�. <b></b>"+
			        "Cufflink �� �����ڵ�� ������ �����ϴ�. <b></b><center><h1>"+num+"</h1></center>"+
			        "�� �ڵ带 ��û���� �ʾҴٸ� �ٸ� ����� CuffLink ���� �� ������ <b></b>�Ϸ��� �õ� �ϴ� ���ϼ��� �ֽ��ϴ�. �������Ե� �� �ڵ带 �����ϰų� �����ϸ� �ȵ˴ϴ�. "+
			        "�����մϴ�. <b></b> Cufflink ������</td></tr></table></body></html>";
		   
		   Properties props = System.getProperties();
		   props.put("mail.smtp.host", smtpServer);
		   props.put("mail.smtp.port", smtpPort);
		   props.put("mail.smtp.auth", true);
		   props.put("mail.smtp.ssl.enable", true);
		   props.put("mail.smtp.ssl.trust", smtpServer);
		   Session session2 = null;
		   session2 = Session.getDefaultInstance(props, new Authenticator(){
		      protected PasswordAuthentication getPasswordAuthentication(){
		         return new PasswordAuthentication(sendId, sendPass);
		      }
		   });   
		   
		   MimeMultipart multipart  = new MimeMultipart("related");
		   BodyPart messageBodyPart = new MimeBodyPart();

		   messageBodyPart.setContent(message,"text/html; charset=euc-kr");
		   multipart.addBodyPart(messageBodyPart);
		   
		   
		   session2.setDebug(true);
		   Message msg = new MimeMessage(session2);
		   msg.setFrom(new InternetAddress(sendMailAddr));
		   msg.setRecipient(Message.RecipientType.TO, new InternetAddress(receiveMailAddr));
		   msg.setSubject(subject);
		   msg.setContent(multipart);

		  /*  msg.setText(message); */
		   Transport.send(msg);
		
		return Integer.parseInt(num);
	}
	
	
	//���̵� üũ ���� ĸ��
	@RequestMapping("/capcharLogic")
	public int callbackLogic(HttpServletRequest req,@RequestParam Map<String,Object> pMap, Model mod) {
		int result  = 0;
		result = clientLogic.NaverCapchar(pMap);
		
		logger.info(result);
		//�ߺ��Ǵ� �̸����� ������
		if(result == 0) {
			
			
			return 0;
		}

		return 1;
		
	}

	@RequestMapping(value = "/naver/onMapReady",produces="text/plain;charset=UTF-8")
	public String onMapReady() {
		
		logger.info("onMapReady ȣ�⼺��");
		List<Map<String,Object>> onMapList =  clientLogic.onMapReady();
		String tojson = "";
		Gson gson = new Gson();
		tojson = gson.toJson(onMapList);
		return tojson;
		
	}
	
	/*@RequestMapping("/test")
	public int ProcedureTest(HttpServletRequest req,@RequestParam Map<String,Object> pMap, Model mod) {
		String result  = "";
	
		pMap.put("b_no", 5);
		result = clientLogic.proc_board_test(pMap);
		logger.info("ȣ�� ���� ���ν���");

		return 1;
		
	}*/
	/*@RequestMapping("/ProcedureTest")
	public int ProcedureTest(HttpServletRequest req,@RequestParam Map<String,Object> pMap, Model mod) {
		String result  = "";
	
		pMap.put("b_no", 26);
		result = clientLogic.proc_board_test(pMap);
		logger.info("ȣ�� ���� ���ν���");

		return 1;
		
	}*/
}
