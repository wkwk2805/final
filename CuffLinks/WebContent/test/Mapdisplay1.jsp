<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.css">
</head>
<body>
<div class="ui search">
  <div class="ui icon input">
    <input class="prompt" id = "MapSearch" type="text" placeholder="Search countries...">
    <i class="search icon"></i>
  </div>
  <div class="results"></div>
</div>
<div id="map" style="width:600px;height:480px;"></div>
<div id = "namverMap"><Button id = "NaverRoardView"></Button><div id="pano" style="width:600px;height:480px;"></div></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2732ac11811f296aee0dfeb99caa81e&libraries=services"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=BUuozqDteU__6q25Dpo7&submodules=panorama"></script></head>
<script>
//��������---------------------------------------------------------------------
var name  = "";
var title = "";
var phone = "";
var image = "";
var y    = 0;
var x    = 0;
var mapContainer;
var mapOption;
var map;
var searchcoords = "";
var markers = [];
var json = '[{"name":"����"},{"name":"����"},{"name":"�Ȼ�"}]';
var obj = '';


//��������---------------------------------------------------------------------

function close(){
	$("#pano").hide();
}

function initPanorama(y,x) {
    pano = new naver.maps.Panorama("pano", {
        position: new naver.maps.LatLng(y, x),
        pov: {
            pan: -135,
            tilt: 29,
            fov: 100
        }
    });

    naver.maps.Event.addListener(pano, "init", function() {
        marker.setMap(pano);

        var proj = pano.getProjection();
        var lookAtPov = proj.fromCoordToPov(marker.getPosition());
        if (lookAtPov) {
            pano.setPov(lookAtPov);
        }
    });
    
    
    var marker = new naver.maps.Marker({
	    position: new naver.maps.LatLng(y, x)
	});

	var contentString = [
		'<div class="ui segment" style="width: 270px;height: 190px;padding-top: 0px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;margin-bottom: 0px;">'+
        '<p><h3 style="margin-top: 0px;margin-left: 15px;"align="center">CuffLink33</h3><div class="ui divider" style=" margin-top: 0px;"></div>'+
        '<div class = "ui grid"><div class="center aligned two column row" style="height: 89px;padding-bottom: 0px;"><div class="column" style=" height: 60px;">'+
        '<img src = "./Test.png" style=" height: 60px;"></div><div class="column" style="height: 60px;">'+
        '�ּ�<br></br>����ó<br></br></div></div></div><div class="ui buttons" style = "margin-top:10px;">'+
        '</div></p></div>'
	].join('');

	var infowindow = new naver.maps.InfoWindow({
	    content: contentString
	});

	naver.maps.Event.addListener(marker, "click", function(e) {
	    e = e || window.event;

	    if (e.stopPropagation) {
	        e.stopPropagation();
	    }

	    e.cancelBubble = true;

	    if (infowindow.getMap()) {
	        infowindow.close();
	    } else {
	        infowindow.open(pano, marker);
	    }
	});
    
    
}



function roadView(y,x){
	
	$("#namverMap").show();
	initPanorama(y,x)

	naver.maps.onJSContentLoaded = initPanorama;

}
function road(){

	 location.href ="http://map.daum.net/link/to/"+name+","+y+","+x
}
function map(value){
	
	name = value;

	
mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 4 // ������ Ȯ�� ����
    };  

// ������ �����մϴ�    
map = new daum.maps.Map(mapContainer, mapOption); 

// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
var geocoder = new daum.maps.services.Geocoder();
obj = JSON.parse(value);
// �ּҷ� ��ǥ�� �˻��մϴ�
var a = 0;
for(var i = 0; i<obj.length;i++){

	name  = obj[i].PRO_START;
/* 	title = obj[i].PRO_NAME;
	phone = obj[i].C_BUSINESSNUMBER;
	image = obj[i].PRO_FILE; */

geocoder.addressSearch(name, function(result, status) {

	a++;

    // ���������� �˻��� �Ϸ������ 
     if (status === daum.maps.services.Status.OK) {
    	
    	 y = result[0].y;
    	 x = result[0].x;
        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

    	var imageSrc = '../image/Location.jpg', // ��Ŀ�̹����� �ּ��Դϴ�    
        imageSize = new daum.maps.Size(64, 69), // ��Ŀ�̹����� ũ���Դϴ�
        imageOption = {offset: new daum.maps.Point(27, 69)}; // ��Ŀ�̹����� �ɼ��Դϴ�. ��Ŀ�� ��ǥ�� ��ġ��ų �̹��� �ȿ����� ��ǥ�� �����մϴ�.
          
    // ��Ŀ�� �̹��������� ������ �ִ� ��Ŀ�̹����� �����մϴ�
        var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption)
        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
        
        var marker = new daum.maps.Marker({
            map: map,
            position: coords,
            clickable: true
        });
        var iwContent = '<div class="ui segment" style="width: 270px;height: 190px;padding-top: 0px;padding-left: 0px;padding-bottom: 0px;padding-right: 0px;margin-bottom: 0px;">'+
        '<p><h3 style="margin-top: 0px;margin-left: 15px;"align="center">'+obj[a].PRO_NAME+'</h3><div class="ui divider" style=" margin-top: 0px;"></div>'+
        '<div class = "ui grid"><div class="center aligned two column row" style="height: 89px;padding-bottom: 0px;"><div class="column" style=" height: 60px;">'+
        '<img src = "'+obj[a].PRO_FILE+'" style=" height: 60px;"></div><div class="column" style="height: 60px;">'+
        ''+obj[a].PRO_START+'<br></br>'+obj[a].C_BUSINESSNUMBER+'<br></br></div></div></div><div class="ui buttons" style = "margin-top:10px;">'+
        '<button onClick = "road()" class="ui button" style="margin-left: 55px;">��ã��</button><div class="or"></div><button onClick = "roadView('+y+','+x+')" class="ui positive button">�ε��</button>'+
        '</div></p></div>';
        // ����������� ��ҿ� ���� ������ ǥ���մϴ�
        var infowindow = new daum.maps.InfoWindow({
            content: iwContent,
            removable:true
        });
        infowindow.close();
        
        daum.maps.event.addListener(marker, 'click', function() {
            // ��Ŀ ���� ���������츦 ǥ���մϴ�
            infowindow.open(map, marker);  
         });

        
        if (navigator.geolocation) { // GPS�� �����ϸ�
    	    navigator.geolocation.getCurrentPosition(function(position) {
    	      coords = new daum.maps.LatLng(position.coords.latitude+0.006, position.coords.longitude+0.00004);
    	      
    	      var marker = new daum.maps.Marker({
    	            map: map,
    	            position: coords,
    	            clickable: true,
    	            image: markerImage 
    	        });

    	      map.setCenter(coords);
    	      
    	    }, function(error) {
    	      console.error(error);
    	    }, {
    	      enableHighAccuracy: false,
    	      maximumAge: 0,
    	      timeout: Infinity
    	    });
    	  } else {
    	    alert('GPS�� �������� �ʽ��ϴ�');
    	  }

        
        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
       
    } 
});    
}
}
$(document).ready(function(){
	
	$("#NaverRoardView").click(function(){
		
		$("#namverMap").hide();
		
	});

    $("#MapSearch").keydown(function(event){
		
		if(event.keyCode == '13'){
			MapSearch($("#MapSearch").val());
			$("#MapSearch").val("");
		}
		
	});
	

	$.ajax({
		
		url:"/naver/onMapReady"
	   ,method:"post"
	   ,success:function(data){

			map(data);

	   }
       ,error:function(xhrObject){
    	   alert(xhrObject,responseText);
       }
		
	});


	
});
function setMarkers(map) {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(map);
    }            
}

function MapSearch(value){
	
	
	MapSearchName = value;
	var imageSrc = '../image/searchMarker.png', // ��Ŀ�̹����� �ּ��Դϴ�    
    imageSize = new daum.maps.Size(64, 69), // ��Ŀ�̹����� ũ���Դϴ�
    imageOption = {offset: new daum.maps.Point(27, 69)}; // ��Ŀ�̹����� �ɼ��Դϴ�. ��Ŀ�� ��ǥ�� ��ġ��ų �̹��� �ȿ����� ��ǥ�� �����մϴ�.
      
// ��Ŀ�� �̹��������� ������ �ִ� ��Ŀ�̹����� �����մϴ�
    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption)

	// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
	var geocoder = new daum.maps.services.Geocoder();

/* 	var map = new daum.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

 */

	// �ּҷ� ��ǥ�� �˻��մϴ�
	geocoder.addressSearch(MapSearchName, function(result, status) {

	    // ���������� �˻��� �Ϸ������ 
	     if (status === daum.maps.services.Status.OK) {
	    	 y = result[0].y;
	    	 x = result[0].x;
	    	 searchcoords = new daum.maps.LatLng(result[0].y, result[0].x);
	    		// ��Ŀ�� �����մϴ�
	    	 setMarkers(null);
	        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
	        var marker = new daum.maps.Marker({
	            map: map,
	            position: searchcoords,
	            clickable: true,
	            image: markerImage 
	            // ��Ŀ�̹��� ���� 
	        });

	        // ����������� ��ҿ� ���� ������ ǥ���մϴ�
	
	        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
            markers.push(marker);
            map.setCenter(searchcoords);
	    } 
	    //���������� �˻��� �Ϸ���� �ʾ����� 
	     else{
	    	 alert("�ּҸ� �ڼ��� �Է����ּ���");
	    	 
	    	  var marker = new daum.maps.Marker({
		            map: map,
		            position: searchcoords,
		            clickable: true
		   
		        });
	    	  markers.push(marker);
              map.setCenter(searchcoords);
	     }
	});    
}

</script>

</body>
</html>