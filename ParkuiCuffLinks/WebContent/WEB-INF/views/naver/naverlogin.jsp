<%@page import="java.math.BigInteger"%>
<%@ page import="java.net.URLEncoder" %>
<%@page import="java.security.SecureRandom"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>���̹� �α���</title>
</head>
<%
    String clientId = "rmou4AhUqzItkRwBH1dK";//���ø����̼� Ŭ���̾�Ʈ ���̵�";
    String redirectURI = URLEncoder.encode("http://localhost:8080/WEB-INF/views/naver/callback.jsp", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
  <a href="<%=apiURL%>"><img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>



