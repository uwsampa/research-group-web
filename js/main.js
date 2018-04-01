window.onresize = function(){
    if(window.innerWidth<769){
        $("#wrapper").removeClass("toggled")
        $("#logo").css("width","35%")
        $("#header").css("display","flex")
    }
    else {
        $("#wrapper").removeClass("toggled")
        $("#wrapper").addClass("toggled")
        $("#logo").css("width","75%")
        $("#header").css("display","none")
    }
}

window.onload = function(){
    if(window.innerWidth>769){
        $("#wrapper").addClass("toggled")
        $("#logo").css("width","75%")
        $("#header").css("display","none")
    }

}
