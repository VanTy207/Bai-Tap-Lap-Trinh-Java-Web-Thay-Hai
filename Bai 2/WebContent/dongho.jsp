<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Đồng hồ</title>
	<link rel="stylesheet" href="">
</head>
<body>
	<div id="demo" style="width: 100px; height: 100px; box-shadow: 0 0 1px black;"></div>
	<div id="nutbam">
		<input type="button" value="start" onclick="start()" />
		<input type="button" value="stop" onclick="stop()" />
	</div>
	<script>
		var x;
		var day;
		var hour;
		var minute;
		var second;
		function start(){
			day = new Date();
			hour = day.getHours();
			minute = day.getMinutes();
			second = day.getSeconds();
			document.getElementById("demo").innerHTML = hour + ":" + minute + ":" + second;
		
			x = setTimeout(start, 1000);
		}
		function stop(){
			clearTimeout(x);
		}
	</script>
</body>
</html>