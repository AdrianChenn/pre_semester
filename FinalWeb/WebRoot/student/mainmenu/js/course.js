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
function showList(obj){

	var content = obj.parentNode;
	var childNum = content.children[1].children.length;
	var fullHeight = childNum*45+35;
	var timer = null;
	if(content.clientHeight==40){
		timer = setInterval(function(){
			content.style.height = Math.floor((fullHeight-content.clientHeight)/2+content.clientHeight+1)+"px";
			if(content.clientHeight == fullHeight){
				clearInterval(timer);
			}
		},60);
	}
	else{
		timer = setInterval(function(){
			content.style.height = Math.floor((content.clientHeight-40)/2+40)+"px";
			if(content.clientHeight == 40){
				clearInterval(timer);
			}
		},60);
	}

}








