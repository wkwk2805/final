<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title">
[�÷���ģ��] �������� ģ�� �߰��ϱ�
</h3>
</div>
<div class="panel-body">
<a id="plusfriend-add-button" href="#" onclick=" void addPlusFriend();">
<img src="/assets/img/about/logos/plusfriend/friendadd_large_yellow_rect.png"/>
</a>
</div>
</div>
<script type='text/javascript'>
  //<![CDATA[
    // ����� ���� JavaScript Ű�� ������ �ּ���.
    Kakao.init('8e91bf2951ff7ac21938e4a240554ea4');
    // ���丮 ���� ��ư�� �����մϴ�.
    function addPlusFriend() {
    	Kakao.PlusFriend.addFriend({
    		plusFriendId: '_Mxhhuj'
    	});
    }
  //]]>
</script>

</body>
</html>