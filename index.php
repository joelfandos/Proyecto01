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
		      		<h5>MIS RESERVAS ACTIVAS</h5>
		      		
		        	
		        </div>
		        <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button id="btn_reserva" type="button" class="btn btn-primary bg-success">Reservar</button>
					</div>
				</div>
			</div>
		</div>
			<section id="banner">
				<img src="fotos/foto1.jpg">
				<div class="contenedor">
					<h2>Reservas</h2>
					<p>¿Quieres reservar un recurso?</p>
					<a href="login.php">Reserva</a>
				</div>
			</section>
			
			<section id="bienvenidos">
			<div class="contenedor">
				<h2>BIENVENIDOS A RESERVAS</h2>
				<table id="tabla_resus" class="display">
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
			</section>
			   
			<section id="info">

				<div class="contenedor">
					<p>Reservas es una comunidad en la cual todos nos ayudamos, trata de reservar un recurso ya sea aulas como portátiles, móviles, entre otras cosas.</p>
					</div>
					
				</div>
			</section>

			<div class="row">
				<div class="col-1"></div>
				<div class="col-10 bg-secondary">
				<table id="tabla1" class="display">
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
				<div class="col-1"></div>
			</div>
		<footer>
			<div class="contenedor">
				<p>Reservas &copy; 2019</p>
				<div class="sociales">
					<i class="fab fa-google" style="color:black;"></i>
				</div>
			</div>
		</footer>


		<label id="id_reserva" style="display: none;"></label>
		<label id="id_user" style="display: none;"><?php echo $_SESSION['usr'] ?></label>



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
					"iDisplayLength": 5,
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
					"iDisplayLength": 5,
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
				      }
				    });
 				});
    			table1.columns().every( function () {
        			var that = this;
 
        		$( 'label', this.footer() ).on( 'keyup change clear', function () {
            		if ( that.search() !== this.value ) {
                		that
                    .search( this.value )
                    .draw();
            		}
        		});
    } );		   
			});
			
		</script>

</body>
</html>