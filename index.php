<!DOCTYPE html>
<html>
<head>
	<title>Reservas</title>
	<meta charset="utf-8">
	
	
</head>
<body>
	<?php include('header.php'); ?>


	
	<div class="modal fade" id="mdl_reserva" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-scrollable" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 id="lbl_recurso"></h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<h5>DETALLES DEL RECURSO</h5>
	      	<p>TIPO</p><p id="tipo"></p><br />
	      	<p>DESCRIPCION</p><p id="desc"></p><br />
	        <img style="max-width: 300px;" id="foto_recurso" src="">
	      </div>
	      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button id="btn_reserva" type="button" class="btn btn-primary bg-success">Reservar</button>
				</div>
		</div>
		</div>
		</div>
		<div class="modal fade" id="mdl_act" tabindex="-1" role="dialog">
		  <div class="modal-dialog modal-dialog-scrollable modal-sm" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 id="lbl_recurso"></h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      	</div>
		      	<div class="modal-body">
		      		<h5>¿DESEA TERMINAR EL USO?</h5>
		      		<h7>De </h7>
		      		<h7 id="h_recurso"></h7>
		        </div>
		        <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button id="btn_terminar" type="button" class="btn btn-primary bg-danger">Terminar</button>
					</div>
				</div>
			</div>
		</div>
			<section id="banner">
				<img src="fotos/foto1.jpg">
				<div class="contenedor" align="center">
					<h2 style="font-size: 55px;">BIENVENIDO A TU SITIO DE RESERVAS - <?php echo $_SESSION['usr']; ?></h2>
					<p>Reserva aquí tu recurso.</p>
					
				</div>
			</section>
	
			<section id="bienvenidos">
			<div class="contenedor">
				
				<div class="row">
				<div class="col-6 table-bordered bg-secondary">
					<table id="tabla_resus" class="display" style="background: gray;">
						<br>
					<h3>TUS RESERVAS</h3>
					<h5>Haz click para finalizar tu reserva.</h5>
			    			<thead>
			            		<th>ID</th>
			            		<th>RECURSO</th>
			            		<th>TIPO</th>
			            		<th>DESCRIPCIÓN</th>
			            		<th>FECHA_ENT</th>
		            			<th>IMAGEN</th>
		            			<th>FECHA_DEV</th>
		            			<th>ID_RECURSO</th>
			    			</thead>
			    			<tfoot>
			            		<th></th>
			            		<th></th>
			            		<th></th>
			            		<th></th>
			            		<th></th>
		            			<th></th>
		            			<th></th>
		            			<th></th>
			    			</tfoot>
					</table>
				</div>
	
				
				<div class="col-6 table-bordered bg-secondary">
				<table id="tabla1" class="display" style="background: gray; ">
					<br>
				<h3>RESERVAS DISPONIBLES</h3>
				<h5>Haz click para hacer la reserva.</h5>
		    			<thead>
		            		<th>ID</th>
		            		<th>RECURSO</th>
		            		<th>TIPO</th>
		            		<th>DESCRIPCIÓN</th>
		            		<th>IMAGEN</th>
		    			</thead>
		    			<tfoot>
		            		<th></th>
		            		<th></th>
		            		<th></th>
		            		<th></th>
		            		<th></th>
		    			</tfoot>
				</table>
				</div>
	
			</div>
		</div>
	</section>
			<br>
			<div class="row">
				<div class="col-1"></div>
				<div class="col-10 table-bordered bg-secondary">
				<table id="tabla_admin" class="display" style="background: gray; ">
					<br>
					<h3 align="center">HISTORIAL DE RESERVAS</h3>
		    			<thead>
		            		<th>ID</th>
		            		<th>RECURSO</th>
		            		<th>F_ENTRADA</th>
		            		<th>F_DEVOLUCION</th>
		            		<th>USER</th>
		    			</thead>
		    			<tfoot>
		            		<th></th>
		            		<th></th>
		            		<th></th>
		            		<th></th>
		            		<th></th>
		    			</tfoot>
				</table>
				</div>
				<div class="col-1"></div>
			</div>
			<br>
		<footer>
			<div class="contenedor">
				
				<div class="sociales">
					<p>Reservas &copy; 2019</p>
					<i class="fab fa-google" style="color:black;"></i>
					<i class="fab fa-facebook" style="color:black;"></i>
					<i class="fab fa-instagram" style="color:black;"></i>
					<i class="fab fa-twitter" style="color:black;"></i>
				</div>
			</div>
		</footer>


		<label id="id_reserva" style="display: none;"></label>
		<label id="id_user" style="display: none;"><?php echo $_SESSION['usr'] ?></label>
		<label id="idr_reserva" style="display: none;"></label>
		<label id="ID_RECU" style="display: none;"></label>
		<label id="ID_RES" style="display: none;"></label>



		<script src="./plugins/jquery-3.4.1.min.js"></script>
		<script src="./plugins/bootstrap/bootstrap.min.js"></script>
		<script type="text/javascript" src="./plugins/datatables/datatables.min.js"></script>
		<script src="./plugins/fontawesome/all.min.js"></script>
		<script>
			$(document).ready( function () {
			    var table1 = $('#tabla1').DataTable({
			    	"bProcessing": true,
					"sAjaxSource": "./services/data.php",
					"bPaginate":true,
					"sPaginationType":"full_numbers",
		            "aoColumns": [
			            { mData: "ID" },
					    { mData: "RECURSO" },
					    { mData: "TIPO" },
					    { mData: "DESCRIPCION" },
					    { mData: "IMAGEN" }
					],
					 "columnDefs": [
				        { targets: [2, 4], visible: false}
				    ]
				});
			    var table2 = $('#tabla_resus').DataTable({
			    	"bProcessing": true,
					"sAjaxSource": "./services/data1.php?user=" + $('#id_user').text(),
					"bPaginate":true,
					"sPaginationType":"full_numbers",
		            "aoColumns": [
			            { mData: "ID_RES" },
					    { mData: "RECURSO" },
					    { mData: "TIPO" },
					    { mData: "DESCRIPCION" },
					    { mData: "FE" },
					    { mData: "IMAGEN" },
					    { mData: "FD" },
					    { mData: "ID_RECU" }
					  ],
					 "columnDefs": [
				        { targets: [2, 5], visible: false}
				    ],
				    "order":[[0,'DESC']]
				});
				var table3 = $('#tabla_admin').DataTable({
			    	"bProcessing": true,
					"sAjaxSource": "./services/data2.php",
					"bPaginate":true,
					"sPaginationType":"full_numbers",
		            "aoColumns": [
			            { mData: "ID_RES" },
					    { mData: "RECURSO" },
					    { mData: "FECHA_ENT" },
					    { mData: "FECHA_DEV" },
					    { mData: "USER" }					     
					  ],
				    "order":[[0,'DESC']]
				});
				$('#tabla1 tfoot th').each( function () {
        			var title = $(this).text();
        		$(this).html( '<label type="text" placeholder="Search '+title+'" />' );
   				 } );
 				
 				$('#tabla1 tbody').on( 'click', 'tr', function () {
  					var data = table1.row( this ).data();
  					$('#mdl_reserva').modal('show');
  					$('#lbl_recurso').text(data['RECURSO']);
  					switch(Number(data['TIPO'])) {
					  case 1:
					    $tipo ='INMUEBLE';
					    break;					  
					  case 2:
					    $tipo ='ELECTRONICA';
					}
  					$('#tipo').text($tipo);
  					$('#desc').text(data['DESCRIPCION']);
  					$('#id_reserva').text(data['ID']);
  					$('#foto_recurso').attr("src",data['IMAGEN']);
				});
   				$('#tabla_resus tbody').on( 'click', 'tr', function () {
  					var data1 = table2.row( this ).data();
  					$('#mdl_act').modal('show');
  					$('#h_recurso').text(data1['RECURSO']);
  					$('#foto_recurso1').attr("src",data1['IMAGEN']);
  					$('#idr_reserva').text(data1['ID']);
  					$('#ID_RECU').text(data1['ID_RECU']);
  					$('#ID_RES').text(data1['ID_RES']);
				});
 				$('#btn_terminar').click(function(){
 					var num1 = Number($('#ID_RECU').text());
 					var num2 = Number($('#ID_RES').text());
 					console.log(num1);
 					console.log(num2);
				    $.ajax({
				      url: './services/crud.php',
				      method: 'POST',
				      data: {'FILTRO': 2,'id_recurs':num1 ,'id_reser':num2},
				      success: function(response){
						$('#mdl_act').modal('hide');
						table1.ajax.reload();
						table2.ajax.reload();
				      }
				    });
 				});
 				$('#btn_reserva').click(function(){
				    var id = Number($('#id_reserva').text());
				    var user = $('#id_user').text();
				    $.ajax({
				      url: './services/crud.php',
				      method: 'POST',
				      data: {'FILTRO': 1,'id': id,'user':user},
				      success: function(response){
						$('#mdl_reserva').modal('hide');
						table1.ajax.reload();
						table2.ajax.reload();
				      }
				    });
 				});
 				$('#tabla1 tfoot th').each( function () {
			        var title = $(this).text();
			        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
			    } );
    			table1.columns().every( function () {
			        var that = this;
			 
			        $( 'input', this.footer() ).on( 'keyup change clear', function () {
			            if ( that.search() !== this.value ) {
			                that
			                    .search( this.value )
			                    .draw();
			            }
			        } );
			    } );
			});
			
		</script>

</body>
</html>