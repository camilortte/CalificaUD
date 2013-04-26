//$("#registrar").css("display","none"); botonRegistrarse


//Aparicion -desaparciion
$("#registrar").click(function() {	
	 $("#log").hide("slow");
	$("#register").show("slow");
});

$("#volverToIniciarSesion").click(function() {	
	 $("#register").hide("slow");
	$("#log").show("slow");
});

$("#botonRegistrarse").click(function() {
	$("#form1").valid(function(){alert("SE VA A ENVIAR");});	
	 
});
