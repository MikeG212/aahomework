console.log("Hello from the JavaScript console!"); //1

// Your AJAX request here

$.ajax({ //3 b/c asynchronous
	method: 'GET', //methdo type
	url: 'http://api.openweathermap.org/data/2.5/weather' //where we're going with it
  + '?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b',
	dataType: JSON,
	success(data) { //takes the data and prints it out to us if status code 200
    console.log("Got em");
    console.log(data);
  },
  error() {
    console.error("ERROR!!") //alerts user of error
  }

});

// Add another console log here, outside your AJAX request

console.log("Outside the AJAX request") //2
