$(function ()  
  { $("#register").hide();  
});  

$("#iniciar").click(function () {
   $("#log").show("slow");
   $("#register").hide("slow");
});

$("#registrar").click(function () {
   $("#register").show("slow");
   $("#log").hide("slow");
});