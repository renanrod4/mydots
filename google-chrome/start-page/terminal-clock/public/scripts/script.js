var hour = document.querySelectorAll("div.hours")
var minutes = document.querySelectorAll("div.minutes")
var day = document.querySelectorAll("div.day")
var month = document.querySelectorAll("div.month")
var year = document.querySelectorAll("div.year")

var date = new Date
hour[0].innerText = date.getHours()
minutes[0].innerText = date.getMinutes()
day[0].innerText = date.getDate()
month[0].innerText = date.getUTCMonth()+1
year[0].innerText = date.getFullYear()
setInterval(()=>{
    var date = new Date
    hour[0].innerText = date.getHours()
    minutes[0].innerText = date.getMinutes()
    
},1000)