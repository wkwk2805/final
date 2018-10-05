<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<jsp:include page="../WEB-INF/views/common/ui.jsp" />
</head>
<body>
<div id="map" style="width:600px;height:480px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8e91bf2951ff7ac21938e4a240554ea4&libraries=services"></script>
<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8e91bf2951ff7ac21938e4a240554ea4&libraries=services&libraries=clusterer"></script>
<script>
var name = "";
var y    = 0;
var x    = 0;
function road(){

	 location.href ="http://map.daum.net/link/to/"+name+","+y+","+x
}
function map(value){
	
	name = value;
	
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 4 // ������ Ȯ�� ����
    };  

// ������ �����մϴ�    
var map = new daum.maps.Map(mapContainer, mapOption); 

// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
var geocoder = new daum.maps.services.Geocoder();

// �ּҷ� ��ǥ�� �˻��մϴ�
geocoder.addressSearch(name, function(result, status) {

    // ���������� �˻��� �Ϸ������ 
     if (status === daum.maps.services.Status.OK) {
    	 y = result[0].y;
    	 x = result[0].x;
        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
        var marker = new daum.maps.Marker({
            map: map,
            position: coords,
            clickable: true
        });

        // ����������� ��ҿ� ���� ������ ǥ���մϴ�
        var infowindow = new daum.maps.InfoWindow({
            content: '<div class="ui segment" style="width: 270px;height: 190px;padding-top: 0px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;margin-bottom: 0px;">'+
                     '<p><h3 style="margin-top: 0px;margin-left: 15px;"align="center">CuffLink</h3><div class="ui divider" style=" margin-top: 0px;"></div>'+
                     '<div class = "ui grid"><div class="center aligned two column row" style="height: 89px;padding-bottom: 0px;"><div class="column" style=" height: 60px;">'+
                     '<img src = "./Test.png" style=" height: 60px;"></div><div class="column" style="height: 60px;">'+
                     '�ּ�<br></br>����ó<br></br></div></div></div><div class="ui buttons" style = "margin-top:10px;">'+
                     '<button onClick = "road()" class="ui button" style="margin-left: 55px;">��ã��</button><div class="or"></div><button class="ui positive button">�ε��</button>'+
                     '</div></p></div>',
            removable:true
        });
            infowindow.open(map, marker);  
        daum.maps.event.addListener(marker, 'click', function() {
            // ��Ŀ ���� ���������츦 ǥ���մϴ�
            infowindow.open(map, marker);  
         });

        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
        map.setCenter(coords);
    } 
});    
}
$(document).ready(function(){

	$.ajax({
		
		url:""
	   ,method:"post"
	   ,success:function(data){
		   
			map("����");
			
	   }
       ,error:function(xhrObject){
    	   alert(xhrObject,responseText);
       }
		
	});

	
});

</script>

</body>
</html>