<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Fitple</title>
<meta name="author" content="Alvaro Trigo Lopez" />
<meta name="description" content="fullPage plugin by Alvaro Trigo. Pure javascript version of full screen slider." />
<meta name="keywords"  content="fullpage,jquery,alvaro,trigo,plugin,fullscren,screen,full,iphone5,apple,pure,javascript,slider,hijacking" />
<meta name="Resource-type" content="Document" />
<link rel="stylesheet" type="text/css" href="js/javascript.fullPage.css" />
<link rel="stylesheet" type="text/css" href="css/Index.css?ver=2" />
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/javascript.fullPage.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript" src="js/scroll.js?ver=2"></script>
</head>
<body id='body'>
	<div id='header'>
	
		<div class='header_main'>
			<a href='test.jsp'>
				<div class='logo'></div>
			</a>
			<div id='menu1' class='menu1'></div>
			<div id='menu2' class='menu2'></div>
		</div>
		
		<div class='header_login'>
			<div>
				<a href='#3rdPage'><h3>Join</h3></a>
			</div>
		</div>
	</div>

<div id="fullpage">
	<div class="section " id="section0">
		<div class="content">
			
		</div>
	</div>
	<div class="section" id="section1">
		<div class="content">
		<div class='wrap'>
			<form class='userinput' name='userinput'>
				<div><section><h1>±âÀå</h1></section><input type='number' name='Length'></div>
				<div><section><h1>Çã¸®</h1></section><input type='number' name='Waist'></div>
				<div><section><h1>Çã¹÷Áö</h1></section><input type='number' name='Thigh'></div>
				<div><section><h1>¹ØÀ§</h1></section><input type='number' name='Crotch'></div>
				<div><section><h1>¹Ø´Ü</h1></section><input type='number' name='Hem'></div>	
				
				<div class='inputbtn'>
				<input type='button' class='searchbtn' name='search' value='Search' onclick='result_popup()'/>
				</div>
			 </form>
		</div>
		</div>
	</div>
	<%if(session.getAttribute("id")== null){ %>
	<div class="section" id="section2">
		<div class="content">
		<form class="form1" name='userinput' method='get' action='login.jsp'>
			<div class="wrap">
				<div class="login_mark">
					<img src="./img/Fitple.png"></img>
				</div>
				<div class='login_info'>
					<div class='info_id'>
						<input type='text' name='id' placeholder='ID'>
					</div>
					<div class='info_pw'>
						<input type='text' name='pw' placeholder='PASSWORD'>
					</div>
					<div class='loginbtn'>
						<button type='submit'>·Î±×ÀÎ</button>
					</div>
		</form>
		<form class="form2" action='signup.jsp'>
					<div class='signupbtn'>
						<button type='submit'>È¸¿ø°¡ÀÔ</button>
					</div>
		</form>
				
				</div>
			</div>	
		</div>
	</div>
	<%}else{ %>
	<div class="section" id="section2_a">
		<div class="content">
			<div class='info'>
			<p><%=session.getAttribute("id") %>´Ô ¾È³çÇÏ¼¼¿ä</p>
			<a href='logout.jsp'><button type='button'>·Î±×¾Æ¿ô</button></a>
			</div>
		<div class='mypage'>
			<div class='mypage_left'>
			<p><input type='number' name='length'></p>
			<p><input type='number' name='waist'></p>
			<p><input type='number' name='thigh'></p>
			<p><input type='number' name='crotch'></p>
			<p><input type='number' name='hem'></p>
			</div>
			<div class='mypage_right'>
			<p><input type='text' name='id'></p>
			<p><input type='password' name='pwd'></p>
			<p><input type='text' name='name'></p>
			<p><input type='text' name='email'></p>
			<p><input type='text' name='phone'></p>
			</div>
		</div>	
		</div>	
	</div>
	
	<div class="section" id="section3">
		<div class="content">
			3
		</div>	
	</div>
	<%} %>
</div>

<script type="text/javascript">
	fullpage.initialize('#fullpage', {
		anchors: ['firstPage', 'secondPage', '3rdPage', '4thpage', 'lastPage'],
		menu: '#menu',
		css3:true
	});

</script>

<script>
	function result_popup() {
	var Length = document.getElementsByName('Length')[0].value;
	var Waist = document.getElementsByName('Waist')[0].value;
	var Thigh = document.getElementsByName('Thigh')[0].value;
	var Crotch = document.getElementsByName('Crotch')[0].value;
	var Hem = document.getElementsByName('Hem')[0].value;
	
	var url = 'search_proc.jsp?Length='+Length+'&Waist='+Waist+'&Thigh='+Thigh+'&Crotch='+Crotch+'&Hem='+Hem;
	
	window.open( url, "idcheck", "top=200, left=200, toolbar=no, menubar=no, scrollbars=yes, resizable=yes, width=800, height=500" );
	}
</script>

</body>
</html>
