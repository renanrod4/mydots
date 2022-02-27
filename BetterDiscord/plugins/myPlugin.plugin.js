/**
 * @name Myplugin
 * @author Renan
 * @version 0.0.1
 * @description just my plugin 
 **/

module.exports = class Myplugin{
    load(){
        var status = 0;
        var sidebar = document.querySelector("div.sidebar-1tnWFu")
        console.log(sidebar)
        var channelname = document.querySelectorAll(".channelName-3KPsGw")
        console.log(channelname)
        document.addEventListener("mousemove",(e)=>{
            var x = e.clientX
            var y = e.clientY
            console.log(e.clientX)
            if((x <= 303 && status == 1) || (x<=125) ){
                sidebar.classList.add("mouseover")
                sidebar.classList.remove("mouseout")
                status = 1;

                for (let i = 0; i < channelname.length; i++){
                    channelname[i].classList.remove("channelhide");
                    
                }
            }else{
                sidebar.classList.add("mouseout")
                status = 0;
                
                for (let i = 0; i < channelname.length; i++){
                    channelname[i].classList.add("channelhide");
                    }
                sidebar.classList.remove("mouseover")
            }
        })
    

    }
    start(){

    }
    stop(){

    }
}