package com.util;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

/*
 * �����ڵ带 �ۼ��� ���ô�.
 * 1)�Ķ���Ͱ� �ʿ��Ѱ�? - yes(��? )
 * ��Ʈ:���� ���� � Ŭ�������� �ν��Ͻ�ȭ�� �ؾ��ϴ°���?
 *     � �������� �ʿ��� �ɱ�?
 *     
 */
public class HashMapBinder {
	Logger logger = Logger.getLogger(HashMapBinder.class);
	HttpServletRequest req = null;
	int i = 0;
	public HashMapBinder(HttpServletRequest req) {
		this.req = req;
	}
	public void bind(Map<String,Object> pMap){//�ܺο��� ��ü ������ �Ǿ���.
		Enumeration<String> en = 
				req.getParameterNames();
		while(en.hasMoreElements()) {
			String key = en.nextElement();
		
			pMap.put(key, HangulConversion.toUTF((String)pMap.get(key)));
		}
	}
}









