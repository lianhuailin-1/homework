var user = {
	name : '',
	password : ''
};

window.onload = function(){
	var lib = new Lib();
	user.name = lib.getId('name').value;
	user.password = lib.getId('password').value;
	alert(user.name);
};

var Lib = function(){};

Lib.prototype.getId = function(id) {
	var ele = document.getElementById(id);
	return ele;
};

Lib.prototype.getTag = function(tag) {
	var tag = document.getElementsByTagName(tag);
	return tag;
};

Lib.prototype.addEvent = function(tag) {
	var tag = document.getElementsByTagName(tag);
	return tag;
};

