$(document).ready(function(){

var tlf_emp= new Array();
var tlf_enc= new Array();
var tlf_due= new Array();
var email_emp= new Array();
var email_enc= new Array();
var email_due= new Array();
var ii=0;
var maquinarias = new Array();



	$(document).on('change', '#estados', function() {
			$.get(base_url+'ingresar/cargar_municipio',{ 'id' : $('#estados').val() } , function(data) {
					html='<option value="">--seleccione--</option>';
					for (var i = 0 ; i < data.length ; i++) {
					html+='<option value="'+data[i].id_municipio+'">'+data[i].municipio+'</option>';	
					}
					$('#municipio').html(html);
			},'json');
	});


	$(document).on('change', '#municipio', function() {
			$.get(base_url+'ingresar/cargar_parroquia',{ 'id' : $('#municipio').val() } , function(data) {
					html='<option value="">--seleccione--</option>';
					for (var i = 0 ; i < data.length ; i++) {
					html+='<option value="'+data[i].id_parroquia+'">'+data[i].parroquia+'</option>';	
					}
					$('#parroquia').html(html);
			},'json');
	});












	$(document).on('click', '#agregar_maquina', function() {
		

		 $('#maquina').val();
   		 $('#cantidad').val();
    		 $('#estatus').val();


    		 var html="";
    		  var html2="";
    		 
    		 html+='<input type="hidden" value="'+$('#maquina').val()+'"  id="maquinas'+ii+'" name="maquina[]" >';
    		 html+='<input type="hidden" value="'+$('#cantidad').val()+'"  id="cantidad'+ii+'" name="cantidad[]" >';
    		 html+='<input type="hidden" value="'+$('#estatus').val()+'"  id="estatus'+ii+'" name="estatus[]" >';
    		 
    		

		html2+='<tr>';
			html2+='<td>'+ $('#maquina').val()+'</td>';
			html2+='<td>'+ $('#cantidad').val()+'</td>';
			html2+='<td>'+ $('#estatus').val()+'</td>';
		html2+='</tr>';
	
    		 



    		 ii++;
    		 $('#despues').after(html2);
    		 $('#area_maquina_input').after(html);




	});

		$(document).on('click', '#agregar_tlf_emp', function() {
		

		html='<input type="text" class="form-control" id="emp_tlf" name="emp_tlf[]" >';
   		 
		$('.div_agregar_tlf_emp').before(html);

	});

		$(document).on('click', '#agregar_email_emp', function() {
		

		html='<input type="text" class="form-control" id="emp_email" name="emp_email[]" >';
   		 
		$('.div_agregar_email_emp').before(html);

	});

		$(document).on('click', '#agregar_tlf_due', function() {
		

		html='<input type="text" class="form-control" id="due_tlf" name="due_tlf[]" >';
   		 
		$('.div_agregar_tlf_due').before(html);

	});

		$(document).on('click', '#agregar_email_due', function() {
		

		html='<input type="text" class="form-control" name="due_email[]" id="due_email[]" >';
   		 
		$('.div_agregar_email_due').before(html);

	});

		$(document).on('click', '#agregar_tlf_enc', function() {
		

		html='<input type="text" class="form-control" id="enc_tlf" name="enc_tlf[]" >';
   		 
		$('.div_agregar_tlf_enc').before(html);

	});

		$(document).on('click', '#agregar_email_enc', function() {
		

		html='<input type="text" class="form-control" name="enc_email[]" id="enc_email[]" >';
   		 
		$('.div_agregar_email_enc').before(html);

	});





});