    $(document).ready(function(){
    $("p").click(function(){
    $(this).hide();
    });
    $("button").click (function(){
    $("h1, h2, h3").toggleClass("blue");
    $("div").toggleClass("important");
    });
   /* $("h2").mouseleave(function(){
    $(this).hide();
    }); 
    $("h3").mouseenter(function(){
    $(this).hide();
    });
    $("div").mouseenter(function(){
    $(this).hid3schole();
    });
    */$("#boton").click (function(){
    $("#div1").fadeToggle();
    $("#div2").fadeOut("slow");
    $("#div3").fadeOut(3000);
    });
    $("#boton1").click (function(){
    $("#div1").fadeToggle();
    $("#div2").fadeOut("slow");
    $("#div3").fadeOut(3000);
    });
    $("#boton2").click (function(){
    $("#div1").slideup();
    $("#div2").slideup();
    $("#div3").slideup();
    });
});