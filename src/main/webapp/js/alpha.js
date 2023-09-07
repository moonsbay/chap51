
class Alpha{
	static color=['Black',
		   'Red',
		   'Green',
		   'Yellow',
		   'Blue',
	       'Magenta',
		   'Cyan',
           'White'];
	
	constructor(){
		this.line = 10;
		this.column = 20;
		this.fg = Alpha.color[parseInt(Math.random()*8)];
		this.bg = Alpha.color[parseInt(Math.random()*8)];
		this.ch = String.fromCharCode('A'.charCodeAt(0) + parseInt(Math.random()*26));
		
		this.direction = parseInt(Math.random()*4);
		this.show();
		
		this.tid = setInterval(() => this.move(), Math.random()*500 + 10);
	   }
	
	show(){
		
		let td = cmd.rows[this.line-1].cells[this.column-1]
		td.style.color = this.fg;
		td.style.background = this.bg;
		td.innerText = this.ch;
	}
	
	hide(){
		
		let td = cmd.rows[this.line-1].cells[this.column-1]
		td.style.color = 'black';
		td.style.background = 'black';
		td.innerText = '@';
		
	}
	
	move(){
//		console.log("move..."+ this.ch)
		this.hide();
		
		switch(this.direction){
			case 0: //up
				this.line--;
		    break;
		    case 1: //down
		    	this.line++;
		    break;
		    case 2: //left
		    	this.column--;
		    break;
		    case 3: //right
		    	this.column++;
		    break;
			
		}
//		this.column++;
//		this.line--;
		
		if(this.column<1 || this.column > 40 || this.line<1 || this.line > 20){
			clearInterval(this.tid);
		    return;
		}
		
		this.show();
		
	}
}


window.onload = () => {
	count.innerText = 0;
	cmd.before(document.createElement('hr'));
	new Alpha();
	
	setInterval(() => {
		new Alpha()
		let cnt = count.innerText;
		cnt++;
		count.innerText = cnt;
		}, 10);
		
}