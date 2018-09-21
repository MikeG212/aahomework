// window.setTimeout(function () { //asynchronous
//   alert('HAMMERTIME');
// }, 5000);

// function hammerTime(time) {
//   alert('${time} is hammertime!')
// }


// closure, I can't change what's inside the method
function hammerTime (time) {
  window.setTimeout(function () {
    alert(`${time} is HAMMER TIME!`);
  });
}
