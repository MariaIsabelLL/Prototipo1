var canvas = null,
    ctx = null,
    x = 0,
    y = 0;

var click1 = null;
var mousex=0,mousey=0;
var paso = 1;

var imagen1 = new Image();
imagen1.src = "images/principal.png";

var imagen2 = new Image();
imagen2.src = "images/principal2.png";

var imagen3 = new Image();
imagen3.src = "images/principal3.png";

var imagen4 = new Image();
imagen4.src = "images/principal4.png";

var img = new Image();
img = imagen1;

window.requestAnimationFrame = (function () {
    return window.requestAnimationFrame ||
        window.mozRequestAnimationFrame ||
        window.webkitRequestAnimationFrame ||
        function (callback) {
            window.setTimeout(callback, 17);
        };
}());

function init() {
    canvas = document.getElementById('canvas');
    ctx = canvas.getContext('2d');
    run();
}

function run() {
    window.requestAnimationFrame(run);
    act();
    paint(ctx);
}

function act() {
	
    if ((click1 == 1)  && (paso == 3) && (x >= 100) && (y >= 20) && (y <= 50)) {
    	img = imagen4;
    	paso = 4;
    	click1 = 0;
    } else if ((click1 == 1)  && (paso == 2) && (x >= 215) && (y >= 20) && (y <= 50)) {
    	img = imagen3;
    	paso = 3;
    	click1 = 0;
    } else if ((click1 == 2)  && (paso == 1) && (x >= 180) && (y >= 75) && (y <= 140)) {
    	img = imagen2;
    	paso = 2;
    	click1 = 0;
    } 
}

function paint(ctx) {
	
	ctx.drawImage(img, 0, 0);
    img.onload = function(){
    	ctx.drawImage(img, 0, 0, 240 , 450);
    }
    
    /*var img2 = new Image();
    img2.src = "images/logo.png";
    
    ctx.drawImage(img2, x, y);
    img2.onload = function(){
    	ctx.drawImage(img2, x, y);
    }    */
    
    ctx.strokeStyle='#0f0';
    ctx.beginPath();
    ctx.arc(mousex,mousey,5,0,Math.PI*2,true);
    ctx.stroke();
}

window.addEventListener('load', init, false);

document.addEventListener('mousemove',function(evt){
    mousex=evt.pageX-canvas.offsetLeft;
    mousey=evt.pageY-canvas.offsetTop;
},false);

document.addEventListener('dblclick',function(evt){
    click1 = 2;
    x=evt.pageX-canvas.offsetLeft;
    y=evt.pageY-canvas.offsetTop;
},false);

document.addEventListener('click',function(evt){
    click1 = 1;
    x=evt.pageX-canvas.offsetLeft;
    y=evt.pageY-canvas.offsetTop;
},false);


