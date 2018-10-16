<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<meta charset="EUC-KR">
<title>Web Speech API Demo</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.3/dist/semantic.min.css">
<input id = "Tests" style="width: 304px;height: 406px;">
<div class="right">
  <button id="start_button" onclick="startButton(event)">
    <img id="start_img" src="mic.gif" alt="Start"></button>
     <button onclick = "Test()"></button>
</div>
<input id = "Tests2">
<script>
var recognizing = false;
var two_line = /\n\n/g;
var one_line = /\n/g;
var first_char = /\S/;
var final_transcript = '';
var ignore_onend;
var start_timestamp;
var final_span;
var interim_span;

function speak(text) {
	  if (typeof SpeechSynthesisUtterance === 'undefined' || typeof speechSynthesis === 'undefined') {
	    alert('This browser does not support speech API');
	    return;
	  }

	  const message = new SpeechSynthesisUtterance(text);
	  const voices = speechSynthesis.getVoices();

	  message.voice = voices[0];
	  speechSynthesis.speak(message);
	}

if(('webkitSpeechRecognition' in window)) {
  start_button.style.display = 'inline-block';
  var recognition = new webkitSpeechRecognition();
  recognition.continuous = true;
  recognition.interimResults = true;
  recognition.onstart = function() {
    recognizing = true;
    alert("������~");
    start_img.src = 'mic-animate.gif';
  };
  recognition.onend = function() {
    recognizing = false;
    if (ignore_onend) {
      return;
    }
    start_img.src = 'mic.gif';
    if (!final_transcript) {
      alert("����ũ��");
      return;
    }
    alert("����ũ��");
  };

  recognition.onresult = function(event) {
      
    var interim_transcript = '';
    var final_transcript   = '';
    for (var i = event.resultIndex; i < event.results.length; ++i) {
      if (event.results[i].isFinal) {
        final_transcript += event.results[i][0].transcript;
        
        var answer = final_transcript;

        if(answer.replace(/\s/gi, "") == "�����ڱ�Ұ�"){
         	answer = "";
        	speak("�ȳ��ϼ��� ���� ���Ͽ���");
        }
        else if(answer.replace(/\s/gi, "") == "��������Ʈ�����ؼ��Ұ�����"){
        	answer = "";
        	speak("Ŀ����ũ�� ��Ʈ�ʽ��� ������Ʈ�� ����ϰ� �����ڰ� ��û�Ͽ�");
        }
        else if(answer.replace(/\s/gi, "") == "��������Ʈ�����ؼҰ�����"){
        	answer = "";
        	speak("Ŀ����ũ�� ��Ʈ�ʽ��� ������Ʈ�� ����ϰ� �����ڰ� ��û�Ͽ�");
        }
        else if(answer.replace(/\s/gi, "") == "�������ó���"){
        	answer = "";
        	location.href = "https://weather.naver.com/rgn/townWetr.nhn?naverRgnCd=02190790";
        	
        }
        else if(answer.replace(/\s/gi, "") == "�������̹���"){
        	answer = "";
        	location.href = "https://www.naver.com/";
        }
        else if(answer.replace(/\s/gi, "") == "�ƿ���"){
        	answer = "";
        	speak("���� ���� ���������� �ȵ� �� ��� �־��� ");
        }
       
        
      } else {
        interim_transcript += event.results[i][0].transcript;
      }
  
      
    }
    final_transcript = capitalize(final_transcript);
    $("#Tests").val(linebreak(final_transcript));
    $("#Tests").val(linebreak(interim_transcript));��
  
    

  };

}
function linebreak(s) {
  return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
}
function capitalize(s) {
  return s.replace(first_char, function(m) { return m.toUpperCase(); });
}
function startButton(event) {
  alert("����ũ����");
  if (recognizing) {
    recognition.stop();
    return;
  }
  final_transcript = '';
  recognition.lang = 'ko-KR';
  recognition.start();
  ignore_onend = false;
  final_span.innerHTML = '';
  interim_span.innerHTML = '';
  start_img.src = 'mic-slash.gif';
  showButtons('none');
  start_timestamp = event.timeStamp;
}
</script>
</head>
<body>
</body>
</html>