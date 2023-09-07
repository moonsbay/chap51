<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table4.jsp</title>
 
<script type="text/javascript">
class Alpha{
	static color = [ 'Black',
			      	  'Red',
			      	  'Green',
			      	  'Yellow',
			      	  'Blue',
			      	  'Magenta',
			      	  'Cyan',
			      	  'White' ];
	constructor(){
		this.line = parseInt(Math.random()*20 + 1);
		this.column = parseInt(Math.random()*40 + 1);
		do{
		this.fg = Alpha.color[parseInt(Math.random()*8)];
		this.bg = Alpha.color[parseInt(Math.random()*8)];
		}while(this.fg == this.bg);
		this.ch = String.fromCharCode(parseInt(Math.random()*26) + 'A'.charCodeAt(0));
	}
	
	genTr(){
		console.log(`(\${this.line},\${this.column},\${this.fg},\${this.bg},\${this.ch})`)
		let values = [this.line, this.column, this.fg, this.bg, this.ch];
		let tr = document.createElement('tr');
		for(let v of values){
			let td = document.createElement('td');
			td.align = 'center';
			td.innerText = v;
			
			tr.append(td);
		}
		return tr;
	}
	
}

function init(){
	let dtable = document.createElement('table');
	dtable.border = 1;
	dtable.style.fontFamily='monospace';
	
	let tbody = document.createElement('tbody');
	
	for(let i=0; i<20; i++){
		
		let tr = document.createElement('tr')
		
		for(let j=0; j<40; j++){
		
	    //let alpha = new Alpha();
		
		let td_line = document.createElement('td')
		td_line.innerText = '#'; //alpha.ch;
		
		tr.append(td_line);
		}
		tbody.append(tr);
	}
	
	
	dtable.append(tbody);
	display.replaceWith(dtable);
	dtable.after(document.createElement('hr'))
}
 
window.onload = () => {
	init();
	generator();
}

function generator(){
	let table = document.querySelectorAll('table')[1];
	for(let i=0; i<20; i++){	
	  let a = new Alpha();
	  table.tBodies[0].append(a.genTr());
	}
	
	table.onclick = function(e){
		let td = e.target
		
		if(td.tagName != 'TD') // 'td'.toUpperCase()해도 대문자
			return;
		
		let tr = td.parentElement;
		
//		tr.style.background = 'red';
//		setTimeout(() => tr.style.background = 'white',2000);
		
//		let info = `
//			sectionRowIndex =  \${tr.sectionRowIndex} <br>
//			rowIndex =  \${tr.rowIndex} <br>
//			cellIndex = \${td.cellIndex} <br>
//		`
//		result.innerHTML = info;
		
		
		let line   = tr.cells[0].innerText;
		let column = tr.cells[1].innerText;
		let fg     = tr.cells[2].innerText;
		let bg     = tr.cells[3].innerText;
		let ch     = tr.cells[4].innerText;
		tr.remove();
		
		
		let dtable = document.querySelector('table')
	    td = dtable.rows[line-1].cells[column-1];
	
		
		
		td.style.color = fg;
		td.style.background = bg;
		td.innerText = ch;
		
		setInterval( () =>  {
			if(td.style.visibility == 'visible')
				td.style.visibility = 'hidden';
			else
				td.style.visibility = 'visible';
		}, Math.random()*500 + 10));
		
//		tr.style.background = bg;
	}
}

</script>
</head>
<body>
<h1>Table Tag 실습</h1>
<hr>
<p id="result">
</p>
<span id="display" style = "font-size:30pt">X</span>
<table border="1" style="width:500px">
	<thead>
		<tr>
			<th>line</th>
			<th>column</th>
			<th>fg</th>
			<th>bg</th>
			<th>ch</th>
		</tr>
		
	</thead>
	<tbody>
<!-- 	<tr> 
			<td align="right">10</td>
			<td align="right">20</td>
			<td align="center">30</td>
			<td align="center">40</td>
			<td align="center">A</td>
		</tr>
		<tr>
			<td align="right">5</td>
			<td align="right">4</td>
			<td align="center">31</td>
			<td align="center">44</td>
			<td align="center">Z</td>
		</tr>
-->
	</tbody>
	<tfoot>
		<tr>
			<th>line</th>
			<th>column</th>
			<th>fg</th>
			<th>bg</th>
			<th>ch</th>
		</tr>
	
	
	</tfoot>
</table>
</body>
</html>