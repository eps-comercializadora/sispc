$(document).ready(function(){






  $( function() {
    $( "#accordion" ).accordion({
      collapsible: true
    });
  } );





$(document).on('keyup', '#codigo', function() {

	$.get(base_url+"principal/buscar_por_code", {'codigo': $("#codigo").val()}, function(datos) {
		

		var html="";

		html+='<table class="table">';
		html+="<tr>";
		html+="<td>dato 1</td>";
		html+="<td>dato 2</td>";
		html+="<td>dato 3</td>";
		html+="<td>dato 4</td>";
		html+="<td>dato 5</td>";
		html+="</tr>";
for (var i =0 ; i < datos.length; i++) {
	

		html+="<tr>";
		html+="<td>"+datos[i]['tipo']+"</td>";
		html+="<td>"+datos[i]['rif']+"</td>";
		html+="<td>"+datos[i]['razon']+"</td>";
		html+="<td>"+datos[i]['tipo_ente']+"</td>";
		html+="<td>"+datos[i]['circuito']+"</td>";
		html+="</tr>";


}
		
		


		html+="</table> ";


		$("#lista").html(html);

	},"json");







	



});




});