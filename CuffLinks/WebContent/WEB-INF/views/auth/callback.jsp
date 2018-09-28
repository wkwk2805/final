<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("zuz0tecb_NrFuIUNUC0o", "http://localhost:8080/naver/capchar");
  var token = "";
  var email = "";
  var id    = "";
  // ���� ��ū �� ���
  token = naver_id_login.oauthParams.access_token;
  // ���̹� ����� ������ ��ȸ
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // ���̹� ����� ������ ��ȸ ���� ������ ������ ó���� callback function
  
  function CapcharService(url){

	  $("#C_naver").attr("action",url);
	  $("#C_naver").attr("method","post");
	  $("#C_naver").submit();
	  
  }
  
 function popupOpen(){

	   var popUrl = "/otherJoin";   //�˾�â�� ��µ� ������ URL

	   var popOption = "width=550, height=320, resizable=on, scrollbars=false, status=false";    //�˾�â �ɼ�(optoin)

	      window.open(popUrl,"",popOption);

	   }
  
  function naverSignInCallback() {
	  
	email = naver_id_login.getProfileData('email');
	id    = naver_id_login.getProfileData('id');
    
    $.ajax({
	   	
		 url: "/capcharLogic"
		,method:"post"
		,data : {"j_token" : token ,"j_email":email,"j_id":id,"s_shape":"naver"}
        ,success:function(data){
 
        	if(data==0){
        		
        		$("#j_token").val(token);
        		$("#j_email").val(email);
        		$("#j_id").val(id);
        		$("#s_shape").val("naver");
        		CapcharService("/capcharJoin"); 
        	}
        	else{
        		$("#j_token").val(token);
        		$("#j_email").val(email);
        		$("#j_id").val(id);
        		$("#s_shape").val("naver");
        		CapcharService("/capcharLogin");
        		
        	}

        }
        ,error:function(xhrObject){
        	
        	alert(xhrObject.responseText);
        	
        }
		
	 });
    
    
  }
  
</script>
<form id="C_naver"> 
<input type=hidden id = "j_token" name="j_token"> 
<input type=hidden id = "j_email" name="j_email"> 
<input type=hidden id = "j_id"    name="j_id"> 
<input type=hidden id = "s_shape" name="s_shape"> 
</form> 
</body>
</html>
