//$("#registrar").css("display","none"); botonRegistrarse PRUEBA


//Aparicion -desaparciion
$("#registrar").click(function(evnent) {	
	$("#log").hide("slow");
	$("#register").show("slow");
	//Para que no SUBMIT el formulario
	event.stopPropagation();
});

$("#volverToIniciarSesion").click(function() {	
	 $("#register").hide("slow");
	$("#log").show("slow");
});

//Antes de enviar el registro comprobamos que el correo y  los passwords coincidan.
$('#form_register').submit(function(){	
	var pass1=$('#password1').val();
	var pass2=$('#password2').val();
	var correo=$('#correo').val();
	var correo2=$('#correo2').val();
	var seguir=false;
	var mensaje="";
	if (pass1!=pass2){
		mensaje="Las contraseñas no coinciden";
		$('#error_registro').text(mensaje);
		$('#error_registro').show("slow");
		return false;
	}else {
		seguir=true;
	}

	if(correo!=correo2){
		mensaje="El correo no coincide";
		$('#error_registro').text(mensaje);
		$('#error_registro').show("slow");
		return false
	}else{
		var pass=$('#password1').val();
		var md5=$.md5(pass);
		$('#password1').val(md5);
		seguir=true;
	}

	return seguir;
});  

//En el login se encripta la contrasena antes de enviarla
$('#form_login').submit(function(){
	var pass=$('#password_login').val();
	var md5=$.md5(pass);
	$('#password_login').val(md5);
	var pass2=$('#password_login').val();
	//alert(pass+" "+md5);
	//alert(pass2);
	return true;	
})