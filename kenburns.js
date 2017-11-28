var j = 0;
var kenburns = function(id,images,interv) {

	function setStyle() {
		var style = document.createElement('style');
		//style.type = 'text/css';
		style.id = 'kenBurnsStyle';
		console.log(style);
		document.getElementsByTagName('head')[0].appendChild(style);
	}
	function kbStyle(id, url, x, y, zoom) {
		var styleString = `
			#${id} {
				width: 100vw;
				height: 100vh;
				background-size: cover;
				animation: kenburns 15s infinite;
				background-image: url(${url});
			}
			@keyframes kenburns {
				0% {
					opacity: 0;
				}
				5% {
					opacity: 1;
				}
				95% {
					transform: scale3d(${zoom},${zoom},${zoom}) translate3d(${x}px,${y}px, 0px);
					animation-timing-function: ease-in;
					opacity: 1;
				}
				100% {
					transform: scale3d(2, 2, 2) translate3d(-${x}px, -${y}px, 0px);
					opacity: 0;
				}
			}`;
		console.log(styleString);
		return styleString;
	}

	if(j++===0) setStyle();

	var img = images[j % images.length];
	var p = Math.random() * 100 - 50;
	var q = Math.random() * 30 - 15;
	var z = Math.random() + 1;
			
	document.getElementById('kenBurnsStyle').innerHTML = kbStyle(id, img, p, q, z);
	console.log(document.getElementById('kenBurnsStyle').innerHTML);
	setTimeout(function() { kenburns(id, images, interv) }, interv);
};

