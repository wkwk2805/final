<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="map" style="width:100%;height:700px;"></div>
<jsp:include page="../WEB-INF/views/common/ui.jsp"/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2732ac11811f296aee0dfeb99caa81e&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2732ac11811f296aee0dfeb99caa81e&libraries=clusterer"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=BUuozqDteU__6q25Dpo7&submodules=panorama"></script></head>

<script>
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
var obj = '';



mapContainer = document.getElementById('map'), // ������ ǥ���� div 
mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 4 // ������ Ȯ�� ����
    };  

// ������ �����մϴ�    
map = new daum.maps.Map(mapContainer, mapOption); 

$(document).ready(function(){
	

  $.ajax({
		
		url:"/naver/onMapReady"
	   ,method:"post"
	   ,success:function(data){
   
			obj = JSON.parse(data);
			for(var i = 0; i<obj.length;i++){
			getAddress(obj,i);
			} 

	   }
       ,error:function(xhrObject){
    	   alert(xhrObject,responseText);
       }
		
	});

  
});


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

// �ּ�-��ǥ ��ȯ ��ü�� �����ϰ� ��Ŀ�� ��´� .
function getAddress(name,i){
	

	
	var geocoder = new daum.maps.services.Geocoder();
	// �ּҷ� ��ǥ�� �˻��մϴ�
	geocoder.addressSearch(name[i].PRO_ADDR, function(result, status) {

	    // ���������� �˻��� �Ϸ������ 
	     if (status === daum.maps.services.Status.OK) {

	        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	   
	   	    y = result[0].y;
    	    x = result[0].x;
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
	        '<p><h3 style="margin-top: 0px;margin-left: 15px;"align="center">'+obj[i].PRO_NAME+'</h3><div class="ui divider" style=" margin-top: 0px;"></div>'+
	        '<div class = "ui grid"><div class="center aligned two column row" style="height: 89px;padding-bottom: 0px;"><div class="column" style=" height: 60px;">'+
	        '</div><div class="column" style="height: 60px;">'+
	        ''+obj[i].PRO_ADDR+'<br></br>'+obj[i].C_BUSINESSNUMBER+'<br></br></div></div></div><div class="ui buttons" style = "margin-top:10px;">'+
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
	      	      coords = new daum.maps.LatLng(position.coords.latitude, position.coords.longitude);
	      	      
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
	    	  
	    	  var moveLatLon = new daum.maps.LatLng(position.coords.latitude, position.coords.longitude);
	    	    
	    	    // ���� �߽��� �̵� ��ŵ�ϴ�
	    	  map.setCenter(moveLatLon);
	    
	    } 
	});    
	
}

</script>
</body>
</html>