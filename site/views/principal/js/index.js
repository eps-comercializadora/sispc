$(document).ready(function(){






  $( function() {
    $( "#accordion" ).accordion({
      collapsible: true
    });
  } );





$(document).on('keyup', '#codigo', function() {

	$.get(base_url+"principal/buscar_por_code", {'codigo': $("#codigo").val()}, function(datos) {
		

		var html="";

		html+='<table class="table reponcive">';
		html+="<tr>";
		html+="<td>codigo SICA</td>";
		html+="<td></td>";
		html+="<td>Rif</td>";
		html+="<td>Razon social</td>";
		html+="<td>Tipo de ente</td>";
		html+="<td>Municipio</td>";
		html+="<td>Parroquia</td>";
		html+="<td>Circuito</td>";
		html+="</tr>";
for (var i =0 ; i < datos.length; i++) {
	

		html+="<tr>";
		html+="<td>"+datos[i]['codigo_sica']+"</td>";
		html+="<td>"+datos[i]['tipo']+"</td>";
		html+="<td>"+datos[i]['rif']+"</td>";
		html+="<td>"+datos[i]['razon_social']+"</td>";
		html+="<td>"+datos[i]['tipo_ente']+"</td>";
		html+="<td>"+datos[i]['municipio']+"</td>";
		html+="<td>"+datos[i]['parroquia']+"</td>";
		html+="<td>"+datos[i]['circuito']+"</td>";
		html+="</tr>";


}
		
		


		html+="</table> ";


		$("#lista1").html(html);

	},"json");







	



});

$(document).on('click', '#btn_buscar_por_rif', function() {

	$.get(base_url+"principal/buscar_por_rif", {'rif': $("#rif").val(), 'tipo':$("#tipo_rif").val() }, function(datos) {
		

		var html="";

		html+='<table class="table">';
		html+="<tr>";
		html+="<td>codigo SICA</td>";
		html+="<td></td>";
		html+="<td>Rif</td>";
		html+="<td>Razon social</td>";
		html+="<td>Tipo de ente</td>";
		html+="<td>Municipio</td>";
		html+="<td>Parroquia</td>";
		html+="<td>Circuito</td>";
		html+="</tr>";
for (var i =0 ; i < datos.length; i++) {
	

		html+="<tr>";
		html+="<td>"+datos[i]['codigo_sica']+"</td>";
		html+="<td>"+datos[i]['tipo']+"</td>";
		html+="<td>"+datos[i]['rif']+"</td>";
		html+="<td>"+datos[i]['razon_social']+"</td>";
		html+="<td>"+datos[i]['tipo_ente']+"</td>";
		html+="<td>"+datos[i]['municipio']+"</td>";
		html+="<td>"+datos[i]['parroquia']+"</td>";
		html+="<td>"+datos[i]['circuito']+"</td>";
		html+="</tr>";


}
		
		


		html+="</table> ";


		$("#lista2").html(html);

	},"json");







	



});


});