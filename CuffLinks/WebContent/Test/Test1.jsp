<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
 <style>
    .overlay_info {border-radius: 6px; margin-bottom: 12px; float:left;position: relative; border: 1px solid #ccc; border-bottom: 2px solid #ddd;background-color:#fff;}
    .overlay_info:nth-of-type(n) {border:0; box-shadow: 0px 1px 2px #888;}
    .overlay_info a {display: block; background: #d95050; background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center; text-decoration: none; color: #fff; padding:12px 36px 12px 14px; font-size: 14px; border-radius: 6px 6px 0 0}
    .overlay_info a strong {background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_icon.png) no-repeat; padding-left: 27px;}
    .overlay_info .desc {padding:14px;position: relative; min-width: 190px; height: 56px}
    .overlay_info img {vertical-align: top;}
    .overlay_info .address {font-size: 12px; color: #333; position: absolute; left: 80px; right: 14px; top: 24px; white-space: normal}
    .overlay_info:after {content:'';position: absolute; margin-left: -11px; left: 50%; bottom: -12px; width: 22px; height: 12px; background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png) no-repeat 0 bottom;}
</style>
</head>
<body>
<div id="map" style="width:100%;height:350px"></div> <!-- ������ ǥ���� div �Դϴ� -->
<div id="roadview" style="width:100%;height:300px"></div> <!-- �ε�並 ǥ���� div �Դϴ� -->

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2732ac11811f296aee0dfeb99caa81e"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapCenter = new daum.maps.LatLng(33.5563, 126.7958), // ������ �߽���ǥ
    mapOption = {
        center: mapCenter, // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };

var map = new daum.maps.Map(mapContainer, mapOption);

// Ŀ���� �������̿� ǥ���� �����Դϴ�
// HTML ���ڿ� �Ǵ� Dom Element �Դϴ�
var content = '<div class="overlay_info">';
content += '    <a href="http://place.map.daum.net/17600274" target="_blank"><strong>������ �ؼ�����</strong></a>';
content += '    <div class="desc">';
content += '        <img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_thumb.png" alt="">';
content += '        <span class="address">����Ư����ġ�� ���ֽ� ������ ������ 33-3</span>';
content += '    </div>';
content += '</div>';

// Ŀ���� �������̰� ǥ�õ� ��ġ�Դϴ� 
var position = new daum.maps.LatLng(33.55635, 126.795841);

// Ŀ���� �������̸� �����մϴ�
var mapCustomOverlay = new daum.maps.CustomOverlay({
    position: position,
    content: content,
    xAnchor: 0.5, // Ŀ���� ���������� x�� ��ġ�Դϴ�. 1�� �������� ���ʿ� ��ġ�մϴ�. �⺻���� 0.5 �Դϴ�
    yAnchor: 1.1 // Ŀ���� ���������� y�� ��ġ�Դϴ�. 1�� �������� ���ʿ� ��ġ�մϴ�. �⺻���� 0.5 �Դϴ�
});

// Ŀ���� �������̸� ������ ǥ���մϴ�
mapCustomOverlay.setMap(map);

var rvContainer = document.getElementById('roadview'); //�ε�並 ǥ���� div
var rv = new daum.maps.Roadview(rvContainer); //�ε�� ��ü
var rvClient = new daum.maps.RoadviewClient(); //��ǥ�κ��� �ε�� �ĳ�ID�� ������ �ε�� helper��ü

//������ �߽���ǥ�� ����� �ε���� panoId�� �����Ͽ� �ε�並 ����.
rvClient.getNearestPanoId(mapCenter, 50, function(panoId) {
    rv.setPanoId(panoId, mapCenter); //panoId�� �߽���ǥ�� ���� �ε�� ����
});

daum.maps.event.addListener(rv, 'init', function() {

    // Ŀ���� �������̸� �����մϴ�
    var rvCustomOverlay = new daum.maps.CustomOverlay({
        position: position,
        content: content,
        xAnchor: 0.5, // Ŀ���� ���������� x�� ��ġ�Դϴ�. 1�� �������� ���ʿ� ��ġ�մϴ�. �⺻���� 0.5 �Դϴ�
        yAnchor: 0.5 // Ŀ���� ���������� y�� ��ġ�Դϴ�. 1�� �������� ���ʿ� ��ġ�մϴ�. �⺻���� 0.5 �Դϴ�
    });

    //rvCustomOverlay.setAltitude(2); //Ŀ���� ���������� ������ �����մϴ�.(�ε�� ȭ�� �߾��� 0�Դϴ�)
    rvCustomOverlay.setMap(rv);

    var projection = rv.getProjection(); // viewpoint(ȭ����ǥ)���� ������ �� �ִ� projection ��ü�� �����ɴϴ�.
    
    // Ŀ���ҿ��������� position�� altitude���� ���� viewpoint��(ȭ����ǥ)�� �����մϴ�.
    var viewpoint = projection.viewpointFromCoords(rvCustomOverlay.getPosition(), rvCustomOverlay.getAltitude());

    rv.setViewpoint(viewpoint); //Ŀ���� �������̸� �ε���� ����� ������ �ε���� ������ ��ȭ ��ŵ�ϴ�.
});
</script>
</body>
</html>