<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// DB���� ������ �� -> java servlet(����) �� ���⿡�ٰ� �޾� 
	// �۰� ������ for���� ������ �������� ó������� �ǰ� 
	Map<String,Object> map
						= (Map<String,Object>)request.getAttribute("getPartnersShowAll");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../common/ui.jsp"/>
<jsp:include page="../common/layout.jsp"/>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ʈ�ʽ� ��� ��ü����</title>

</head>
<body style="margin-left:14px;margin-right:14px;" class="ui container">
	<!--=== title =========================================-->
	<div class="ui internally celled grid">
		<div class="row">
			<div class="fifteen wide column">
				<h1 style="float: left; margin-bottom: 0px"><%=map.get("P_NAME") %></h1>
				<div class="ui green label"
					style="border-top-width: 0px; margin-top: 5px; margin-left: 7px;">Ȱ������</div>
				<p></p>
				<div class="floated right">
					<i class="laptop icon"></i>
					�����̳� &nbsp;&nbsp;
					<i class="building outline icon"></i>
					���λ���� &nbsp;&nbsp;
					<i class="credit card outline icon"></i>
					�ſ�����&nbsp;&nbsp;
					<i class="phone icon"></i> 
					����ó ���
				</div>
			</div>
		</div>
	<!----- Ȱ����� ���� ----->
	<div class="row">
		<div class="five wide column">
			<h3>Ȱ�� ��� ����</h3>
			<div class="ui massive star rating" style="margin-bottom: 10px;"></div><br>
		
				 <div class="left floated right aligned">��� ���� 4.8</div>
				 <div class="left floated left aligned">/�� 48��</div>
				 <div class="left floated right aligned">����� ������Ʈ</div>
				 <div class="right floated left aligned">�� </div>
				 <div class="left floated right aligned">��Ʈ������</div>
				  <div class="right floated left aligned">37��</div>
				 
			<!-- 	 <div class="left aligned ">������� 4.8 </div><div class="right aligned">/�� 48�� </div><br>
				 <div class="left aligned">����� ������Ʈ</div><div class="right aligned">100�� </div><br>
				 <div class="left aligned">��Ʈ������ </div><div class="right aligned"> 37�� </div> -->
						
		</div>
		<!----- ���� �׸� �� ----->
		<div class="five wide column">
			<h3>���� �׸� ��</h3><br>
		</div>
		
		<!----- ������  ī�װ� ----->
		<div class="five wide column">
			<h3>������ ī�װ�</h3><br>
		</div>
	</div>
	<!--=== �ڱ�Ұ�  ===========================================-->
		<div class="row" style="margin-bottom: 30px">
			<div class="fifteen wide column">
				<h2 style="float: left; margin-bottom: 0px">�ڱ�Ұ�</h2><br>
				<p style="margin-top: 30px;"></p>
				<%=map.get("PORT_CONTENTS") %>
			</div>
			<a href="#"class="ui right aligned">�ڱ�Ұ� �� ���� ></a>	
		</div>
		<div class="ui inverted divider"></div>
	</div>
	
	<!--=== ��Ʈ������  ===========================================-->
	<h2 align="left" style="margin-left:14px;">��Ʈ������</h2>
	<p></p>
	<div class="ui container" style="height: 450px;">
		<div class="ui three column grid" style="margin-bottom: 30px;height: 400px;">
		  <div class="column">
		    <div class="ui segment" >
		      <div class="ui card">
				  <div class="image">
				    <a href="#"><img src="#"></a>
				  </div>
				  <div class="content">
				    <a class="header">37.�ȴϽ��ǾƳ� UI
				    	<span class="ui orange label"style="margin-left: 15px;padding-bottom: 6px;padding-top: 6px;">��ǥ��ǰ</span>
				    </a>
				    <div class="meta">
				      <span class="date">������ > ���ø����̼�</span>
				    </div>
				    <div class="description">
				      	��Ʈ������ ����
				    </div>
				  </div>
				  <div class="extra content">
				   <center><a>
				    <div data-tooltip="����Ĺ���� ������ ������Ʈ�Դϴ�." data-position="top center">
					   <img src="../image/logo.png" style="height: 15px;width: 15px;">
					       ����Ĺ ������Ʈ ��Ʈ������
					</div>
				   </a></center>
				  </div>
				</div>	
		    </div>
		  </div><!-- column -->
		  <div class="column">
		    <div class="ui segment">
		      <div class="ui card">
				  <div class="image">
				    <a href="#"><img src="#"></a>
				  </div>
				  <div class="content">
				    <a class="header">37.�ȴϽ��ǾƳ� UI
				    	<span class="ui orange label"style="margin-left: 15px;padding-bottom: 6px;padding-top: 6px;">��ǥ��ǰ</span>
				    </a>
				    <div class="meta">
				      <span class="date">������ > ���ø����̼�</span>
				    </div>
				    <div class="description">
				      	��Ʈ������ ����
				    </div>
				  </div>
				  <div class="extra content">
				    <center><a>
					    <div data-tooltip="����Ĺ���� ������ ������Ʈ�Դϴ�." data-position="top center">
					     	<img src="../image/logo.png" style="height: 15px;width: 15px;">
					       	����Ĺ ������Ʈ ��Ʈ������
					    </div>
				    </a></center>
				  </div>
				</div>
		    </div>
		  </div><!-- column -->
		  <div class="column">
		    <div class="ui segment">
		      <div class="ui card">
				  <div class="image">
				    <a href="#"><img src="#"></a>
				  </div>
				  <div class="content">
				    <a class="header">37.�ȴϽ��ǾƳ� UI
				    	<span class="ui orange label"style="margin-left: 15px;padding-bottom: 6px;padding-top: 6px;">��ǥ��ǰ</span>
				    </a>
				    <div class="meta">
				      <span class="date">������ > ���ø����̼�</span>
				    </div>
				    <div class="description">
				      	��Ʈ������ ����
				    </div>
				  </div>
				  <div class="extra content">
				    <center><a>
					    <div data-tooltip="����Ĺ���� ������ ������Ʈ�Դϴ�." data-position="top center">
					     	<img src="../image/logo.png" style="height: 15px;width: 15px;">
					       	����Ĺ ������Ʈ ��Ʈ������
					    </div>
				    </a></center>
				  </div>
				</div>

		    </div>
		  </div><!-- column -->
		</div><!-- three column grid -->
		
		
		
		
	</div><!-- container --> 

		<p></p>
	<a href="#"class="ui right aligned">��Ʈ������ �� ���� ></a>	
	<div class="ui inverted divider"></div>
	
	<!-- === �������  ===========================================-->
	<h2 align="left">�������</h2>
	<table class="ui selectable celled table" style="margin-bottom: 30px;">
	  <thead>
	    <tr>
	      <th>���� </th>
	      <th>���õ�</th>
	      <th>����</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <td><%=map.get("SKILL_TEC")%><div class="ui orange label" style="padding-top: 10px pa;margin-left: 10px;padding-top: 5px;padding-bottom: 5px;">��ǥ�������</div></td>
	      <td><%=map.get("SKILL_PRO") %></td>
	      <td><%=map.get("SKILL_EDU") %></td>
	    </tr>
	    <tr>
	      <td>App design<div class="ui orange label" style="padding-top: 10px pa;margin-left: 10px;padding-top: 5px;padding-bottom: 5px;"">��ǥ�������</div></td>
	      <td>Ư��</td>
	      <td>5���̻� 10�� �̸�</td>
	    </tr>
	    <tr>
	      <td>web design</td>
	      <td>Ư��</td>
	      <td>5���̻� 10�� �̸�</td>
	    </tr>
	    <tr>
	      <td>Prototyping</td>
	      <td>Ư��</td>
	      <td>5���̻� 10�� �̸�</td>
	    </tr>
	  </tbody>
	</table>
	<p></p>
	<a href="#"class="ui right aligned">���� ��� �� ���� ></a>
	<div class="ui inverted divider"></div>
	<!-- === ���  ===========================================-->
	<h2 align="left">���</h2>
	<table class="ui fixed table"style="margin-bottom: 30px;">
	  <thead>
	    <tr><th>ȸ���</th>
	    <th>�ٹ��μ�</th>
	    <th>����</th>
	    <th>�ٹ��Ⱓ</th>
	  </tr></thead>
	  <tbody>
	    <tr>
	      <td>Loreal</td>
	      <td>Design team</td>
	      <td>Senior Designer</td>
	      <td>2012�� 7��<br>~2014�� 7��</td>
	    </tr>
	  </tbody>
	</table>
	<p></p>
	<div class="ui inverted divider"></div>
	<!-- === �з�  ===========================================================================-->
	<h2 align="left">�з�</h2>
	<table class="ui fixed table" style="margin-bottom: 30px;">
	  <thead>
	    <tr><th>�б���</th>
	    <th>����</th>
	    <th>�з�</th>
	    <th>����</th>
	    <th>������</th>
	    <th>������</th>
	  </tr></thead>
	  <tbody>
	    <tr>
	      <td>4�����г�</td>
	      <td>�ð�������</td>
	      <td>���б�</td>
	      <td>����</td>
	      <td>2005�� 2��</td>
	      <td>2012�� 3��</td>
	    </tr>
	  </tbody>
	</table>
		<a href="#"class="ui right aligned">���, �з�, �ڰ��� �� ���� ></a>
	<p></p>
	<div class="ui inverted divider"></div>
	
	
	<!-- === ��  ============================================================================-->
	<h2 align="left">��</h2>
	 <div class="ui segment" style="height: 500px;">
		<h3 class="card-title"><a href="#"> ����� ���ø����̼� GUI ������ �� ������ ������ �۾�</a></h3>
		<div class="ui grid">
		  <div class="fifteen wide column">������ > ���ø����̼�   | Ŭ���̾�Ʈ  TeamEveryWhere</div>
		<!-----���ݾ� | ���Ⱓ | �������------------------------->
		  <div class="sixteen wide column">
		  	<table class="ui selectable celled table">
			  <thead style="align-content: center;">
			    <tr>
			      <th>���ݾ�</th><td>5,000,000��</td>
			      <th>���Ⱓ</th><td>32��</td>
			      <th>�������</th><td>2018�� 07��23��</td>
			    </tr>
			  </thead>
			</table>
		  </div>
		<!-----����---------------------------------------------->
		  <div class="sixteen wide column " style="padding-bottom: 21px;" >
		  	 <div class="ui center aligned header">
		  	 	<div class="ui massive star rating" style="">5.0</div>
		  	 </div>
		  </div>
		<!----������|�����������|�ǻ����|���� �ؼ�|���ؼ�-  -->
		  <div class="sixteen wide column" style="padding-bottom:7px;padding-top: 7px;">
		   <div class="ui center aligned ">
			<div class="ui center five column doubling grid" style="padding-bottom: 10px;padding-left: 30px;">
			  <div class="three wide column"  style="border-right: solid thin;padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">������</center>
			  	<center><div class="ui star rating">5.0</div></center>
			  </div>
			  <div class="three wide column"  style="border-right: solid thin;padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">����� ������</center>
			  	<center><div class="ui star rating">5.0</div></center>
			  </div>
			  <div class="three wide column"  style="border-right: solid thin;padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">�ǻ����</center>
			  	<center><div class="ui star rating">5.0</div></center>
			  </div>
			  <div class="three wide column"  style="border-right: solid thin;padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">���� �ؼ�</center>
			  	<center><div class="ui star rating" >5.0</div></center>
			  </div>
			  <div class="three wide column"  style="padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">���ؼ�</center>
			  	<center><div class="ui star rating">5.0</div></center>
			  </div>
			 </div>
		  </div>
		</div>
		<p></p>
		<!-----Ŭ���̾�Ʈ �ڸ�Ʈ---------------------------------->
		<div class="sixteen wide column">
			<div class="ui unstackable items">
			  <div class="item" style="margin-left: 30px;">
			    <div class="ui small circular rotate reveal image">
			      <img class="ui hidden content" src="../image/anonymous.png">
			      <img class="ui visible content" src="../image/wishket.png">
			    </div>
			    <div class="content" style="padding-left: 30px;">
			      <a class="header" style="margin-top: 5px;"><span class="ui gray label">Ŭ���̾�Ʈ</span></a>
			      <div class="meta">
			        <span>emit2004(���̵�)</span>
			      </div>
			        <p></p>
			      <div class="description">
			      		���� - Ŭ���̾�Ʈ�� ��/ �ڸ�Ʈ....  <a href="#">�ڼ��� ����</a>
			      </div>
			      
			        
		      
		    </div>
		  </div>
		  </div>
		</div>
		
		 </div>
	 </div>
	<p></p>
	<a href="#"class="ui right aligned">�� �� ���� ></a>
	
<!--==========================================================================================-->
<!--==========================================================================================-->
	
	<script type="text/javascript">
		$('.ui.rating')
			.rating({
				initialRating : 4,
				maxRating : 5
			});
		$('.toggle.example .rating')
			.rating('enable')
		;
		
	</script>
</body>
</html>