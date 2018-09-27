package com.cufflink.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/common")
public class CommonController {
	
	@Autowired //commonLogic�� ������ ���� Serviec���
	
	CommonLogic commonLogic;
	
	//����ȭ�� ����
	@RequestMapping("/")
	public String Indexpage(Model m) {
		//commonLogic���� map()�޼ҵ��� ���� �����´�.
		m.addAttribute("get",commonLogic.map());
		return "common/main";
	}
}
