$('#Enviar').click(function() {
  var tex=$('#ListBox_profesor').val();
  if (tex==null){
  	$('#alerta_parrafo').css('display', "block");
  	return false;  	
  }else{
  	$('#alerta_parrafo').css('display', "none");
  	return true
  }
  
});