<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

int result = (int)request.getAttribute("result");
  if(result==1){
	out.print("�ߺ�");
}
else{
	out.print("<font color='blue';>��밡��</font>");
} 
 
%>