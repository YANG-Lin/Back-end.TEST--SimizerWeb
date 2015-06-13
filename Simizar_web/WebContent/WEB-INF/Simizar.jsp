<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>CloudComputingSimulator</title>
<link href="/root/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<style type="text/css">
#div1 {width:60px; height:60px; padding:10px; margin:10px; border:1px solid #aaaaaa;}
#display {width:100px; height:140px; padding:10px; margin:10px; border:1px solid #aaaaaa;}
</style>

<script type="text/javascript">
function allowDrop(ev)
{
ev.preventDefault();
}

function drag(ev)
{
ev.dataTransfer.setData("Text",ev.target.id);
}

function drop(ev)
{
ev.preventDefault();
var data=ev.dataTransfer.getData("Text");
ev.target.appendChild(document.getElementById(data).cloneNode(true));
}
</script>

        <script type="text/javascript">
                    function performClick(elemId) {
                    var elem = document.getElementById(elemId);
                   if(elem && document.createEvent) {
                   var evt = document.createEvent("MouseEvents");
                   evt.initEvent("click", true, false);
                   elem.dispatchEvent(evt);
		</script>
</head>

<body background="root/bootstrap/images/4.jpg">
<!--JavaScript插件都是依赖与jQuery库-->
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<div class="jumbotron" style="background-image: url(root/bootstrap/images/3.jpg); margin-bottom:0px">
	<div class="container">
		<h3 align="center" style="color:#FFFFFF">Cloud Computing Simulator</h3>
	</div>
</div>

<div class="panel panel-default">
  <div class="panel-body">
  
  <div class="container">
	<div class="row">
		<div class="col-md-5">
			<div class="row">
				<div class="col-md-2" ondrop="drop(event)" ondragover="allowDrop(event)">
				<span style="font-size:2em" class="glyphicon glyphicon-cloud" aria-hidden="true" draggable="true" ondragstart="drag(event)" id="drag1"></span>Client
				</div>
				<div class="col-md-2" ondrop="drop(event)" ondragover="allowDrop(event)">
				<span style="font-size:2em" class="glyphicon glyphicon-hdd" aria-hidden="true" draggable="true" ondragstart="drag(event)" id="drag2"></span>Network
				</div>
				<div class="col-md-2" ondrop="drop(event)" ondragover="allowDrop(event)">
				<span style="font-size:2em" class="glyphicon glyphicon-blackboard" aria-hidden="true"draggable="true" ondragstart="drag(event)" id="drag3"></span>Virtual Machine
				</div>
				<div class="col-md-2" ondrop="drop(event)" ondragover="allowDrop(event)">
				<span style="font-size:2em" class="glyphicon glyphicon-text-background" aria-hidden="true"draggable="true" ondragstart="drag(event)" id="drag4"></span>Applications
				</div>
			</div>
<h4>Drag them to your designing area</h4>
		</div>
	
		<div class="col-md-7">
			
			<div class="row">
				<div class="col-md-3">
				<button type="button" class="btn btn-info btn-sm">Create New</button>
				</div>
				<div class="col-md-3">
				<button type="button" class="btn btn-info btn-sm">Save</button>
				</div>
				<div class="col-md-3">
				<button type="button" class="btn btn-info btn-sm">Print</button>
				</div>
				<br><br><br>
				<div class="col-md-2">
				<button type="button" class="btn btn-primary btn-xs">Undo</button>
				</div>
				<div class="col-md-2">
				<button type="button" class="btn btn-primary btn-xs">Redo</button>
				</div>
				<div class="col-md-1">
				<button type="button" class="btn btn-success btn-xs" aria-label="Left Align" onclick="Run('file://c:/Users/HP/Desktop/html/easyMule-Setup.exe')">
					<span class="glyphicon glyphicon-play" aria-hidden="true"></span></button>
				</div>
				<div class="col-md-1">
				<button type="button" class="btn btn-danger btn-xs" aria-label="Left Align">
					<span class="glyphicon glyphicon-pause" aria-hidden="true"></span></button>
				</div>
				<div class="col-md-6">
				<div class="progress">
					<div class="progress-bar" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
						73%
					</div>
				</div>
			</div>
			</div>
		</div>	
   </div>
  </div>
<br>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
<h4>Applications</h4>
				<table class="table">
				   <caption></caption>
				   <thead>
					  <tr>
						 <th>Name</th>
						 <th>Path</th>
					  </tr>
				   </thead>
				   <tbody>
					  <tr class="active">
						 <td>...</td>
						 <td>...</td>
					  </tr>
					  <tr class="success">
						 <td>...</td>
						 <td>...</td>
					  </tr>
					  <tr  class="warning">
						 <td>...</td>
						 <td>...</td>
					  </tr>
					  <tr  class="danger">
						 <td>...</td>
						 <td>...</td>
					  </tr>
					  <tr class="active">
						 <td>...</td>
						 <td>...</td>
					  </tr>
					  <tr class="success">
						 <td>...</td>
						 <td>...</td>
					  </tr>
					  <tr  class="warning">
						 <td>...</td>
						 <td>...</td>
					  </tr>
					  <tr  class="danger">
						 <td>...</td>
						 <td>...</td>
					  </tr>
				   </tbody>
				</table>
				
				<div class="col-md-6">
				<button type="button" class="btn btn-primary btn-xs" onclick="performClick('theFile');">&nbsp;&nbsp;Add&nbsp;&nbsp;</button>
				<br><br>
				<input type="file" id="theFile" />
				</div>
				<div class="col-md-6">
				<button type="button" class="btn btn-primary btn-xs">Delete</button>
				</div>		
			</div>
			
			<div class="col-md-9">
				<div class="panel panel-warning">
				   <div class="panel-heading">
					  <h3 class="panel-title">Designing Area</h3>
				   </div>
				   <div class="panel-body">

						<table class="table">
							<tbody>
								<tr><td rowspan="2" align="center"><div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>Client</td>
									<td>Name:<input id="Name" type="text" class="form-control" placeholder="..."></td>
									<td rowspan="5" align="center"><div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>Network</td>
									<td>Latency:<input type="text" class="form-control" placeholder="..."></td>
								</tr>
								<tr><td>Latitude:<input  id="Latitude" type="text" class="form-control" placeholder="..."></td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td rowspan="3" align="center"><div id="display"></div></td>
									<td>Longtitude:<input id="Longtitude" type="text" class="form-control" placeholder="..."></td>
									<td>&nbsp;</td>
								</tr>
								<tr><td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr><td><button type="submit" class="btn btn-default" onclick="insert()">Submit</button></td>
									<td><button type="submit" class="btn btn-default">Submit</button></td>
								</tr>
								<tr><td rowspan="5" align="center"><div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>VM</td>
									<td>Name:<input type="text" class="form-control" placeholder="..."></td>
									<td rowspan="5" align="center"><div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>Applications</td>
									<td>ClassName:<input type="text" class="form-control" placeholder="..."></td>
								</tr>
								<tr><td>Disksize:<input type="text" class="form-control" placeholder="..."></td>
									<td>Path to jar:<input type="text" class="form-control" placeholder="..."></td>
								</tr>
								<tr><td>Memory size:<input type="text" class="form-control" placeholder="..."></td>
									<td>&nbsp;</td>
								</tr>
								<tr><td>Power:<input type="text" class="form-control" placeholder="..."></td>
									<td>&nbsp;</td>
								</tr>
								<tr><td><button type="submit" class="btn btn-default">Submit</button></td>
									<td><button type="submit" class="btn btn-default">Submit</button></td>
								</tr>
							</tbody>
						</table>
				   
				   </div>
				</div>
			</div>
			
		</div>
	</div>
	
  </div>
</div>

<script type="text/javascript">
var names  = [];
var nameInput  = document.getElementById("Name");
var latitudes  = [];
var latitudeInput  = document.getElementById("Latitude");
var longtitudes  = [];
var longtitudeInput  = document.getElementById("Longtitude");
var messageBox  = document.getElementById("display");



function insert () {
    names.push(nameInput.value);
	latitudes.push(latitudeInput.value);
	longtitudes.push(longtitudeInput.value);
    clearAndShow();
}

function clearAndShow () {
    nameInput.value = "";
	latitudeInput.value = "";
	longtitudeInput.value ="";
    messageBox.innerHTML = "";
    messageBox.innerHTML += "Name: " + names.join("; ") + "<br>" + "Latitude: " + latitudes.join("; ") + "<br>" + "Longtitude:" + longtitudes.join("; ");
}
</script>

<SCRIPT language=JavaScript> 
function Run(strPath) { 
try { 
var objShell = new ActiveXObject("wscript.shell"); 
objShell.Run(strPath); 
objShell = null; 
} 
catch (e){alert('can not find the file"'+strPath+'"(Wrong)') 
} 
} 
</SCRIPT> 

</body>
</html>