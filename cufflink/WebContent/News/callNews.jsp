<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String clientId = "Hw_ExZIHTAvn0VlH_Eft";//���ø����̼� Ŭ���̾�Ʈ ���̵�";
String clientSecret = "2JfnFiD7Eo";//���ø����̼� Ŭ���̾�Ʈ ��ũ����";
String title = request.getParameter("title");
String text = "";
try {

	text = URLEncoder.encode(title, "UTF-8");
    String apiURL = "https://openapi.naver.com/v1/search/news?display=5&query="+ text; // json ���
    //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml ���
    URL url = new URL(apiURL);
    HttpURLConnection con = (HttpURLConnection)url.openConnection();
    con.setRequestMethod("GET");
    con.setRequestProperty("X-Naver-Client-Id", clientId);
    con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
    int responseCode = con.getResponseCode();
    BufferedReader br;
    if(responseCode==200) { // ���� ȣ��
        br = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
    } else {  // ���� �߻�
        br = new BufferedReader(new InputStreamReader(con.getErrorStream(),"UTF-8"));
    }
    String inputLine;
    StringBuffer value = new StringBuffer();
    
    while ((inputLine = br.readLine()) != null) {
    	value.append(inputLine);
    }
    br.close();
    out.print(value.toString());
} catch (Exception e) {
    System.out.println(e);
}

%>