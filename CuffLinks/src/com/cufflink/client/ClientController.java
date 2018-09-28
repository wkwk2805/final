package com.cufflink.client;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.util.HangulConversion;

@Controller
public class ClientController {

	Logger logger = Logger.getLogger(ClientController.class);
	@Autowired
	ClientLogic clientLogic = null;
	String userID = null;
	
	@RequestMapping("/clients/login")
	public String ClientLogin(HttpServletRequest req, HttpServletResponse res, Model model,
			@RequestParam Map<String, Object> pMap) {

		Map<String, Object> hMap = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		Cookie Id = null;
		int capchar = 1;
		hMap = clientLogic.ClientLogin(pMap);

		
		if ((int) hMap.get("Idcheck") == 1) {

			userID = (String) hMap.get("S_ID");
			session.removeAttribute((String) hMap.get("S_ID") + "1");
			session.setMaxInactiveInterval(60*60);
			session.setAttribute((String) hMap.get("S_ID"), hMap);
			Id = new Cookie("id", (String) hMap.get("S_ID"));
			res.addCookie(Id);
			return "auth/loginOk";
		}
		// 비밀번호 없음
		else if ((int) hMap.get("Idcheck") == 0) {
			session.removeAttribute("first");
	
			if (pMap.get("f_id").equals(hMap.get("S_ID"))) {

				if (session.getAttribute((String) pMap.get("f_id") + "1") != null) {
					capchar = (int) session.getAttribute((String) pMap.get("f_id") + "1");
					capchar += 1;
					session.setMaxInactiveInterval(30);
					session.setAttribute((String) pMap.get("f_id") + "1", capchar);
					session.setAttribute("capchar", (String) pMap.get("f_id") + "1");
					logger.info(capchar);
					return "auth/login";
				} else {
					session.setMaxInactiveInterval(30);
					session.setAttribute((String) pMap.get("f_id") + "1", capchar);
					session.setAttribute("capchar", (String) pMap.get("f_id") + "1");
					logger.info(capchar);
					return "auth/login";
				}

			}

		}
		// 아이디없음S
		session.setAttribute((String) pMap.get("f_id") + "1", -1);
		session.setAttribute("capchar", (String) pMap.get("f_id") + "1");
		return "auth/login";
	}

	@RequestMapping("/clients/ClientMyCufflink")
	public String ClientMyCufflink() {

		return "clients/ClientMyCufflink";

	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest req, @RequestParam Map<String, Object> pMap) {

		HttpSession LogoutSession = req.getSession();
		LogoutSession.removeAttribute(userID);
		return "common/main";

	}

	@RequestMapping("/clients/join")
	public String logout(@RequestParam Map<String, Object> pMap) {

		clientLogic.join(pMap);

		return "auth/asd";

	}

	@RequestMapping("/clients/idcheck")
	public String Idcheck(@RequestParam Map<String, Object> pMap, Model mod) {

		int result = 0;
		result = clientLogic.Idcheck(pMap);
		mod.addAttribute("result", result);
		return "forward:IdCheck.jsp";

	}

	@RequestMapping("/capchar")
	public String callback(@RequestParam Map<String, Object> pMap, Model mod) {

		return "auth/callback";

	}

	@RequestMapping("/capcharJoin")
	public String capcharJoin(HttpServletResponse res, @RequestParam Map<String, Object> pMap, Model mod) {

		logger.info("호출 성공 ~~~~~~~~~~~");

		Cookie cookie = new Cookie("j_token", (String) pMap.get("j_token"));
		cookie.setMaxAge(60 * 60);
		res.addCookie(cookie);
		cookie = new Cookie("j_id", (String) pMap.get("j_id"));
		cookie.setMaxAge(60 * 60);
		res.addCookie(cookie);
		cookie = new Cookie("j_email", (String) pMap.get("j_email"));
		cookie.setMaxAge(60 * 60);
		res.addCookie(cookie);
		cookie = new Cookie("s_shape", (String) pMap.get("s_shape"));
		cookie.setMaxAge(60 * 60);
		res.addCookie(cookie);

		return "auth/c_join";

	}


	@RequestMapping("/clients/emailcheck")
	public String Emailcheck(@RequestParam Map<String, Object> pMap, Model mod) {

		int result = 0;
		result = clientLogic.Emailcheck(pMap);
		mod.addAttribute("result", result);
		return "forward:EmailCheck.jsp";

	}
	
/*	@RequestMapping("/capcharLogin")
	public String capcharLogin(@RequestParam Map<String, Object> pMap, Model mod) {

		int result = 0;
		result = clientLogic.Emailcheck(pMap);
		mod.addAttribute("result", result);
		return "forward:EmailCheck.jsp";

	}*/
	
	@RequestMapping("/capchar/join")
	public String capcharJoin(HttpServletRequest req, HttpServletResponse res, @RequestParam Map<String, Object> pMap) {

		Cookie[] cookie = req.getCookies();

		Cookie del = null;
		String cookiename = null;

		for (int i = 0; i < cookie.length; i++) {
			cookiename = cookie[i].getName();

			if ("j_token".equals(cookiename)) {
				pMap.put("j_token", cookie[i].getValue());
				del = new Cookie(cookiename,"");
				del.setMaxAge(0);
				res.addCookie(del);
			} 
			else if ("j_id".equals(cookiename)) {
				pMap.put("j_id", cookie[i].getValue());
				del = new Cookie(cookiename,"");
				del.setMaxAge(0);
				res.addCookie(del);
			} 
			else if ("j_email".equals(cookiename)) {
				pMap.put("j_email", cookie[i].getValue());
				del = new Cookie(cookiename,"");
				del.setMaxAge(0);
				res.addCookie(del);
			} 
			else if ("s_shape".equals(cookiename)) {
				pMap.put("j_shape", cookie[i].getValue());
				del = new Cookie(cookiename,"");
				del.setMaxAge(0);
				res.addCookie(del);
			}
		}
		
		clientLogic.Njoin(pMap);


		return "common/main";

	}
	
	@RequestMapping(value = "/PartnersImages", method=RequestMethod.POST)
	public String PartnersImages(@RequestParam("f_file") MultipartFile f_file, @RequestParam Map<String,Object>pMap) {
	String fileName = HangulConversion.toKor(f_file.getOriginalFilename());
	String path     = "D:\\spring\\CuffLinks\\WebContent\\pds\\";

	int result = 0;
	pMap.put("f_address1", HangulConversion.toUTF((String)pMap.get("f_address1")));
	pMap.put("f_address2", HangulConversion.toUTF((String)pMap.get("f_address2")));
	pMap.put("f_gender", HangulConversion.toUTF((String)pMap.get("f_gender")));
	pMap.put("f_name", HangulConversion.toUTF((String)pMap.get("f_name")));
	pMap.put("f_dropdown", HangulConversion.toUTF((String)pMap.get("f_dropdown")));
	pMap.put("f_file", path+fileName);
	clientLogic.UserUpdate(pMap);
	
	if(f_file!=null) {


		File file = new File(path+fileName);
		
		try {
			
			byte[] bytes = f_file.getBytes();
			BufferedOutputStream bos = 
					new BufferedOutputStream(
							new FileOutputStream(file));
			
			bos.write(bytes);
			bos.close();
			long size = file.length();
		} catch (Exception e) {
			// TODO: handle exception
			logger.info(e.toString());
		}
		
	}
	

	
		return "";
	}

}
