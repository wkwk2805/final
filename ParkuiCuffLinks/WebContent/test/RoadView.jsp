<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=BUuozqDteU__6q25Dpo7&submodules=panorama"></script></head>
<body>
<div id="pano" style="width:100%;height:400px;"></div>
<script>
var pano = null;

function initPanorama() {
    pano = new naver.maps.Panorama("pano", {
        position: new naver.maps.LatLng(37.3599605, 127.1058814),
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
}

var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.3689782, 127.1059397)
});

var contentString = [
    '<div class="iw_inner">',
    '   <h3>����Ư����û</h3>',
    '   <p>����Ư���� �߱� �����1�� 31 | ����Ư���� �߱� ������� 110 ����Ư����û<br />',
    '       <img src="./img/example/hi-seoul.jpg" width="55" height="55" alt="�����û" class="thumb" /><br />',
    '       02-120 | ����,��ȸ��� &gt; Ư��,������û<br />',
    '       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
    '   </p>',
    '</div>'
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

naver.maps.onJSContentLoaded = initPanorama;
</script>
</body>
</html>