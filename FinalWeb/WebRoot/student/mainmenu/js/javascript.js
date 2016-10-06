


window.onload=function(){
	var clientWidth = document.documentElement.clientWidth;
	var clientHeight = document.documentElement.clientHeight;
	var sideBar = document.getElementById("sidebar");
	sideBar.style.left = clientWidth-70+"px";
	sideBar.style.top = clientHeight-70+"px";
	window.onscroll = function(){
		var osTop = document.documentElement.scrollTop || document.body.scrollTop;
		if (osTop >= clientHeight){
			sideBar.style.display = "block";
		}
		else{
			sideBar.style.display = "none";
		}
	}
	var timer = null;
	sideBar.onclick = function(){
		timer = setInterval(function(){
			var osTop= document.documentElement.scrollTop || document.body.scrollTop;
			var ispeed=Math.floor(-osTop/6);
			document.documentElement.scrollTop = document.body.scrollTop = osTop + ispeed;
			if(osTop == 0){
				clearInterval(timer);
			}
		},30);
	}



}




	function login(){
		document.getElementById("login-page").style.display="inline";
	}
	function logout(){
		document.getElementById("login-page").style.display="none";
	}







