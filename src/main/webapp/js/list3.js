
class Technology{
	
	constructor(){
		this.tech = document.querySelector('#tech');
		this.front = document.querySelector('#front');
		this.back = document.querySelector('#back');
		this.btnAppend = document.querySelector('#btnAppend');
		this.frontList = document.querySelector('#frontList');
		this.backList = document.querySelector('#backList');	
	}
	
 	btnAppend_click(e){
		if(this.tech.value.trim()==''){
			this.tech.value='';
		return;
		}
	let li = document.createElement('li')
	li.innerText = this.tech.value.trim()
	
	if(this.front.checked)
		this.frontList.append(li)
	else
	 	this.backList.append(li)
	 	
	this.tech.value = '';
	this.tech.focus();
	}
	 list_click(e){
		let li = e.target;
		li.remove();
	}
	 tech_keyup(e){
		if(e.key == 'Enter')
		this.btnAppend.click();
	}
}


window.onload = function(){
	let t = new Technology();
	
	btnAppend.onclick = t.btnAppend_click.bind(t);  // bind(t) 설명 bind가 없으면 this가 btnAppend.onclick이 되버린다
	frontList.onclick = t.list_click.bind(t);
	backList.onclick = t.list_click.bind(t);
	tech.onkeyup = t.tech_keyup.bind(t);
   
}