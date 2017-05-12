$(document).ready(function(){
var telefonos_emp= new Array();
var email_emp= new Array();
var telefonos_due= new Array();
var email_due= new Array();
var telefonos_enc= new Array();
var email_enc= new Array();
var maquinarias = new Array();


var ii=0;
cont_tlf_emp=0;
cont_email_emp=0;
cont_tlf_due=0;
cont_email_due=0;
cont_tlf_enc=0;
cont_email_enc=0;
contador_maquina=0;



$("[href='#profile']" ).addClass('active');


$(document).on('click', '#prueba1', function() {




	$.post(base_url+'ingresar/guardar', {

        'codigo'				:$('#codigo').val(),
        'figura'				:$('#figura').val(),
        'rif'				:$('#rif').val(),
        'razon'				:$('#razon').val(),
        'estados'				:$('#estados').val(),
        'municipio'			:$('#municipio').val(),
        'parroquia'			:$('#parroquia').val(),
        'tipo_ente'			:$('#tipo_ente').val(),
        'circuito'			:$('#circuito').val(),
        'emp_tlf'				:telefonos_emp,
        'emp_email'			:email_emp,
        'nacionalidad'			:$('#nacionalidad').val(),
        'cedula'				:$('#cedula').val(),
        'nombres'				:$('#nombres').val(),
        'apellidos'			:$('#apellidos').val(),
        'sexo'				:$('#sexo').val(),
        'due_tlf'				:telefonos_due,
        'due_email'			:email_due,
        'enc_nacionalidad'		:$('#enc_nacionalidad').val(),
        'enc_cedula'			:$('#enc_cedula').val(),
        'enc_nombres'			:$('#enc_nombres').val(),
        'enc_apellidos'			:$('#enc_apellidos').val(),
        'enc_sexo'			:$('#enc_sexo').val(),
        'enc_tlf'				:telefonos_enc,
        'enc_email'			:email_enc,
        'harina'				:$('#harina').val(),
        'azucar'				:$('#azucar').val(),
        'sal'				:$('#sal').val(),
        'manteca'				:$('#manteca').val(),
        'margarina'			:$('#margarina').val(),
        'levadura'			:$('#levadura').val(),
        'aceite'				:$('#aceite').val(),
        'maquina'				:maquinarias,
        'cap_operativa'			:$('#cap_operativa').val(),
        'cap_almacen'			:$('#cap_almacen').val(),
        'cap_instalada'			:$('#cap_instalada').val()
  }, function(data) {
  	location.href=base_url+"ingresar";
  });




	console.log(hola);
});






















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




		maquinarias[contador_maquina]={
		'maquina'     : $("#maquina").val(),
		'cantidad'   : $("#cantidad").val(),
		'estatus'    : $("#estatus").val()
		};

		contador_maquina++;


		var html2="";


		html2+='<tr>';
		html2+='<td>'+ $('#maquina').val()+'</td>';
		html2+='<td>'+ $('#cantidad').val()+'</td>';
		html2+='<td>'+ $('#estatus').val()+'</td>';
		html2+='</tr>';
	
    		
    		
    		 $('#despues').after(html2);



	});
	//telefono y emails de la com,enc y dueño
	$(document).on('click', '#agregar_tlf_emp', function() {
		
		if ($('#emp_tlf').val()=='') {return}
		telefonos_emp[cont_tlf_emp]=$('#emp_tlf').val();
		$('#emp_tlf').val('');
		html='';
		for (var i = 0; i < telefonos_emp.length; i++) {
			html+='<br /><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>'+telefonos_emp[i];
		}
		$('#show_tlf_emp').html(html);
		cont_tlf_emp++;
	});
	$(document).on('click', '#agregar_email_emp', function() {
		

		if ($('#emp_email').val()=='') {return}
		email_emp[cont_email_emp]=$('#emp_email').val();
		$('#emp_email').val('');
		html='';
		for (var i = 0; i < email_emp.length; i++) {
			html+='<br /><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>'+email_emp[i];
		}
		$('#show_email_emp').html(html);
		cont_email_emp++;
	});
	$(document).on('click', '#agregar_tlf_due', function() {
		
		if ($('#due_tlf').val()=='') {return}
		telefonos_due[cont_tlf_due]=$('#due_tlf').val();
		$('#due_tlf').val('');
		html='';
		for (var i = 0; i < telefonos_due.length; i++) {
			html+='<br /><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>'+telefonos_due[i];
		}
		$('#show_tlf_due').html(html);
		cont_tlf_due++;
	});
	$(document).on('click', '#agregar_email_due', function() {
		

		if ($('#due_email').val()=='') {return}
		email_due[cont_email_due]=$('#due_email').val();
		$('#due_email').val('');
		html='';
		for (var i = 0; i < email_due.length; i++) {
			html+='<br /><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>'+email_due[i];
		}
		$('#show_email_due').html(html);
		cont_email_due++;
	});
	$(document).on('click', '#agregar_tlf_enc', function() {
		

		if ($('#enc_tlf').val()=='') {return}
		telefonos_enc[cont_tlf_enc]=$('#enc_tlf').val();
		$('#enc_tlf').val('');
		html='';
		for (var i = 0; i < telefonos_enc.length; i++) {
			html+='<br /><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>'+telefonos_enc[i];
		}
		$('#show_tlf_enc').html(html);
		cont_tlf_enc++;
	});
	$(document).on('click', '#agregar_email_enc', function() {
		

		if ($('#enc_email').val()=='') {return}
		email_enc[cont_email_enc]=$('#enc_email').val();
		$('#enc_email').val('');
		html='';
		for (var i = 0; i < email_enc.length; i++) {
			html+='<br /><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>'+email_enc[i];
		}
		$('#show_email_enc').html(html);
		cont_email_enc++;
	});





});