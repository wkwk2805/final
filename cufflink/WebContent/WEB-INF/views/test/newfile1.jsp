<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../common/ui.jsp" />
<meta charset="UTF-8">
<title>test</title>
<link rel="stylesheet" href="./css/cuffLink.css" />
<link rel="stylesheet" href="./css/login.css" />
</head>
<body>

	<div class="ui styled fluid accordion">
		<div class="ui two column grid title">
			<div class="column">
				<i class="envelope outline icon"></i> �̸���
			</div>
			<div class="column" style="text-align: right;">
				<i class="dropdown icon"></i>
			</div>
		</div>
		<div class="content">
			<div class="ui two column centered grid"
				style="padding-top: 0px; border: 1px solid #dedede;">
				<div class="column"
					style="padding-left: 20px; padding-right: 0px; padding-top: 10px; padding-bottom: 10px; width: auto;">
					<img class="ui mini" src="../../image/setting_email.png">
				</div>
				<div class="column"
					style="padding-left: 20px; padding-right: 0px; padding-top: 20px; padding-bottom: 20px; width: auto; text-align: left;">
					&nbsp;&nbsp; twins0313@naver.com ���� �˸��� �޽��ϴ�.</div>
			</div>
			<div style="padding: 20px;"></div>
			<div>
				<div class="ui internally celled grid">
					<div class="row">
						<div class="six wide column" style="background-color:#FBFBEF">
							������Ʈ �˸�
						</div>
						<div class="ten wide column">
							<div class="ui form">
								<div class="grouped fields">
									<div class="field">
										<div class="ui radio checkbox">
											<input type="radio" name="example1" checked="checked">
											<label>��ü �˸� �ޱ�</label>
										</div>
									</div>
									<div class="field">
										<div class="ui radio checkbox">
											<input type="radio" name="example1"> 
											<label>�߿��� �˸��� �ޱ� | ������Ʈ ���, ���� �ȳ� ��</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="six wide column" style="background-color:#FBFBEF">
							������ �˸�
						</div>
						<div class="ten wide column">
							<div class="ui relaxed list">
								<div class="item">
									<div class="ui master checkbox">
										<input type="checkbox" name="fruits"> <label>��ü �˸� �ޱ�</label>
									</div>
									<div class="list">
										<div class="item">
											<div class="ui child checkbox">
												<input type="checkbox" name="apple"> <label>�ǽð� ���ο� ������</label>
											</div>
										</div>
										<div class="item">
											<div class="ui child checkbox">
												<input type="checkbox" name="orange"> <label>�������� ���ο� ������</label>
											</div>
										</div>
										<div class="item">
											<div class="ui child checkbox">
												<input type="checkbox" name="pear"> <label>�ϰ� ������ ��Ȳ</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="six wide column" style="background-color:#FBFBEF">
							��� �˸�
						</div>
						<div class="ten wide column">
							<div class="ui form">
								<div class="grouped fields">
									<div class="field">
										<div class="ui radio checkbox">
											<input type="radio" name="example2" checked="checked">
											<label>��ü �˸� �ޱ�</label>
										</div>
									</div>
									<div class="field">
										<div class="ui radio checkbox">
											<input type="radio" name="example2"> 
											<label>�߿��� �˸��� �ޱ� | ������Ʈ ���, ���� �ȳ� ��</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="" style="padding-top:20px;">
						��Ÿ �˸�
					</div>
					<div class="ui form" style="padding-top:20px;">
						<div class="field">
							<div class="ui checkbox" id="demo1">
								<input type="checkbox" checked="checked">
								<label>Disabled</label>
							</div>
						</div>
						<div class="field">
							<div class="ui checkbox" id="demo2">
								<input type="checkbox"> <label>Read-only</label>
							</div>
						</div>
						<div class="field">
							<div class="ui checkbox" id="demo3">
								<input type="checkbox"> <label>Uncheckable</label>
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="column container" style="padding: 10px; width: 100%; text-align: right;">
						<div class="right menu">
							<button class="ui primary button" style="margin-right: 10px;" onclick="window.location.href='#'" />
							����
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
<!-- ���ڸ޽��� ================================================================================================-->
		<div class="ui two column grid title">
			<div class="column">
				<i class="envelope outline icon"></i> ���� �޽���
			</div>
			<div class="column" style="text-align: right;">
				<i class="dropdown icon"></i>
			</div>
		</div>
		<div class="content">
			<div class="ui two column centered grid" style="padding-top: 0px; border: 1px solid #dedede;">
				<div class="column"	style="padding-left: 20px; padding-right: 0px; padding-top: 20px; padding-bottom: 10px; width: auto;">
					<img class="ui mini" src="../../image/setting_email.png">
				</div>
				<div class="column" style="padding-left: 20px; padding-right: 0px; padding-top: 20px; padding-bottom: 20px; width: auto; text-align: left;">
					�Էµ� ����ó ������ �����ϴ�.<br>
					���ڸ޽��� �˸��� �������� ����ó ������ �Է��� �ּ���.<br><br>
					<h11><a href="/ClientProfile">����ó ���� �Է��ϱ� ></a></h11>
				</div>
			</div>
			<div style="padding: 20px;"></div>
			<div>
				<div class="ui internally celled grid">
					<div class="row">
						<div class="six wide column" style="background-color:#FBFBEF">
							������Ʈ �˸�
						</div>
						<div class="ten wide column">
							<div class="ui form">
								<div class="grouped fields">
									<div class="field">
										<div class="ui radio checkbox">
											<input type="radio" name="example1" checked="checked">
											<label>��ü �˸� �ޱ�</label>
										</div>
									</div>
									<div class="field">
										<div class="ui radio checkbox">
											<input type="radio" name="example1"> 
											<label>�߿��� �˸��� �ޱ� | ������Ʈ ���, ���� �ȳ� ��</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="six wide column" style="background-color:#FBFBEF">
							������ �˸�
						</div>
						<div class="ten wide column">
							<div class="ui relaxed list">
								<div class="item">
									<div class="ui master checkbox">
										<input type="checkbox" name="fruits"> <label>��ü �˸� �ޱ�</label>
									</div>
									<div class="list">
										<div class="item">
											<div class="ui child checkbox">
												<input type="checkbox" name="apple"> <label>�ǽð� ���ο� ������</label>
											</div>
										</div>
										<div class="item">
											<div class="ui child checkbox">
												<input type="checkbox" name="orange"> <label>�������� ���ο� ������</label>
											</div>
										</div>
										<div class="item">
											<div class="ui child checkbox">
												<input type="checkbox" name="pear"> <label>�ϰ� ������ ��Ȳ</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="six wide column" style="background-color:#FBFBEF">
							��� �˸�
						</div>
						<div class="ten wide column">
							<div class="ui form">
								<div class="grouped fields">
									<div class="field">
										<div class="ui radio checkbox">
											<input type="radio" name="example2" checked="checked">
											<label>��ü �˸� �ޱ�</label>
										</div>
									</div>
									<div class="field">
										<div class="ui radio checkbox">
											<input type="radio" name="example2"> 
											<label>�߿��� �˸��� �ޱ� | ��� ���� ����, ��� ���� ��</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div>
					<div class="column container" style="padding: 10px; width: 100%; text-align: right;">
						<div class="right menu">
							<button class="ui primary button" style="margin-right: 10px;" onclick="window.location.href='#'" />
							����
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
$('.ui.accordion')
  .accordion({
    selector: {
      trigger: '.title .icon'
    }
  });
</script>
</body>
</html>