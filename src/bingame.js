var svg;
var textAttrs = { fontSize: '7', fontFamily: 'Helvetica', textAnchor: 'middle', dominantBaseline: 'middle', alignmentBaseline: 'middle'};
var boxAttrs = { fill: '#fff', stroke: '#000', strokeWidth: '0.5', };
var nullAttrs = { fill: '#eee', stroke: '#ddd' };
var nullTextAttrs = { fill: '#ddd' };
var hoverAttrs = { fill: '#6ff', stroke: '#000', strokeWidth: '0.5' };
var waitAttrs = { fill: '#f66', stroke: '#000', strokeWidth: '0.5' };
var waitTextAttrs = { strokeWidth: '0.5' };

var tableau = [];
var picks = [];
var pickAttrs = {fill: '#abb'};

function getRandom(min, max) { return Math.floor(Math.random() * (max - min) + min); }

var Challenge = function(id, type, value) {
	this.t = 0;
	this.d = value; 
	if(this.t == 0) { // b2d
		this.b = this.d.toString(2);
		this.b = Array(11 - this.b.length).join('0') + this.b;
		this.bits = [];
		var skip = true;
		for(var i = 10 - this.b.length; i < 10; i++) {
			this.bits[i] = new Bit(id, this.b[i], i*8, id*12+1);
			if(this.bits[i].v === '1') skip = false;
			if(skip) this.bits[i].disable();
		}
		this.eq = svg.text(10*8+4,id*12+6,'=').attr(textAttrs);
		this.resBox = new resBox('?');
		var x = 11 * 8; var y = id * 12 + 1;
		this.resBox.svg.transform(Snap.format('T{x},{y}',{x: x, y: y}));
		this.resBox.svg.data('v',value);
		this.resBox.svg.data('x',x);
		this.resBox.svg.data('y',y);
		this.resBox.svg.click(waitForAnswer);
		
	} else { // d2b
	}	
}
var Waiting = false;
var waitForAnswer = function() {
	if(Waiting) return;
	Waiting = this;
	this.unclick(waitForAnswer).click(noAnswer);
	this[0].animate(waitAttrs,1000,mina.bounce);
	this[1].animate(waitTextAttrs,1000,mina.bounce);
}
var noAnswer = function() { 
	this.unclick(noAnswer).click(waitForAnswer);
	Waiting = false;
	this[0].attr(hoverAttrs);
	this[1].attr(textAttrs);
}
	
function resBox(t) {
	this.svg = svg.g(
		svg.el('rect').attr({width:15,height:10,rx:1,ry:1}).attr(hoverAttrs),
		svg.el('text').transform('t8,5').attr({text: t}).attr(textAttrs)
	);
}
var Bit = function(id, value, x, y) {
	this.id = id;
	this.v = value;
	this.x = x;
	this.y = y;
	this.svg = svg.g(
		svg.rect(x,y,8,10,1).attr(boxAttrs),
		svg.text(x+4,y+5,this.v).attr(textAttrs)
	);
	this.mouseOver = function() { this[0].attr(hoverAttrs) };
	this.mouseOut = function() { this[0].attr(boxAttrs) };
	this.toggle = function() { this[1].node.innerHTML = 
		(this[1].node.innerHTML == '1') ? '0' : '1'; };
	this.enabled = true;
	this.disable = function() { 
		this.enabled = false; 
		this.svg[0].attr(nullAttrs); this.svg[1].attr(nullTextAttrs);
		this.svg.unclick(this.toggle);
		this.svg.unmouseover(this.mouseOver);
		this.svg.unmouseout(this.mouseOut);
	};
	this.svg.mouseover(this.mouseOver);
	this.svg.mouseout(this.mouseOut);
	this.svg.click(this.toggle);
}

function Pick(v, x, y) {
	this.v = v;
	this.x = x; 
	this.y = y;
	this.svg = svg.g(
		svg.circle(x, y, 5).attr(pickAttrs),
		svg.text(x, y, this.v.toString()).attr(textAttrs)
	).data('v',v).data('x',x).data('y',y);
	this.svg.click(pickPicked);
}
var pickPicked = function() {
	if(! Waiting) return;
	if(this.data('v') === Waiting.data('v')) {
		this.unclick(pickPicked);
		// transportar pick sobre Waiting
		var transf = Snap.format('t{x},{y}',
			{x: Waiting.data('x')-this.data('x') + 5, 
			 y: Waiting.data('y')-this.data('y') + 5});
		console.log(transf);
		this.transform('');
		this.animate({'transform': transf, 'opacity': '0.5'}, 500, mina.easeout);
		Waiting.satisfy();
	}
};

function genPicks(n) {
	for(var i=0; i<n; i++) {
		var x = 14 * 8 + 12 * (i % 2);
		var y = 6  + 12 * Math.floor(i % n) / 2;
		//console.log(x,y);
		picks[i] = new Pick(getRandom(1,99),x,y);
	}
}

var Bingame = function() {
	svg = Snap('#bingame');
	genPicks(8); //desacoplar gen de show para dejar z de picks delante de resbox
	for(id = 0; id < 5; id++) {
		tableau[id] = new Challenge(id, type = 0, picks[id].v);	
		svg.append(tableau[id].svg);
		//console.log(tableau[id]);
	}
}

