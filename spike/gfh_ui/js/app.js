
console.log('spike')

var options = {
	url: 'http://localhost:3000/api/dishes',
	method: 'get',
	dataType: 'json'
};

$('button').on('click', function(){

	$.ajax(options).done(function(data){
		console.log(data[0].name);
		console.log(data[1].name);
		for (var i = 0; i < data.length; i++){
			console.log(data[i].name);
		}
		
		$('div').html(data);
	});

});
	







/*
var options = {
url: 'http://localhost:3000/admin'
}
undefined
$.ajax(options)
Object {readyState: 1}
$.ajax(options)
Object {readyState: 1}
jquery.min.js:4 XHR finished loading: GET "http://localhost:3000/admin".send @ jquery.min.js:4n.extend.ajax @ jquery.min.js:4(anonymous function) @ VM505:2InjectedScript._evaluateOn @ VM195:875InjectedScript._evaluateAndWrap @ VM195:808InjectedScript.evaluate @ VM195:664


$.ajax(options).done(function(data) {
})
*/