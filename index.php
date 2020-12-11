

<!DOCTYPE HTML>

<html>
	<head>
		<title>Wexty Stock</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	
        
	</head>
	<body>
		<script src="http://code.jquery.com/jquery-latest.js"></script>

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<header id="header">
						<h1><a href="index.html">Wexty Stock</a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
											<li><a href="factura.html">CERRAR SESIÓN</a></li>
											<li style="color: yellow"><?php include('conexion.php');?></li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>
				<!-- Main -->
					<article id="main">
						<header style="padding-top: 50px; padding-bottom: 50px;" >
							<h2>WEXTY TIC SENATI</h2>
							<p>DEMO</p>
						</header>
						<section class="wrapper style5">
							<div class="inner">
								<section>
									<h4 style="text-align: center;">Wexty Stock</h4>

									<form method="post" action="#">
										<div class="row uniform">
											
											<div class="4u 12u$(xsmall)">
												<input type="text" name="name" id="name" value="" placeholder="UNIDAD" />
											</div>
											<div class="4u 12u$(xsmall)">
												<select  id="controlBuscador" name="controlbuscador">
												<?php while ($ver=mysqli_fetch_row($result)) {?>
													<option value="<?php echo $ver[0] ?>">
												<?php echo $ver[1]?>
												</option>
												<?php } ?>
												
												</select>
											</div>
											<div class="2u 12u$(xsmall)">
												<select class="selectpicker" name="descripcion" id="descripcion" name="name">
												<?php while ($ver=mysqli_fetch_row($result_articulos)) {?>
													<option value="<?php echo $ver[1] ?>">
												<?php echo $ver[0]?>
												</option>											
												<?php } ?>
												
												</select>
											</div>
											<div class="2u$ 12u$(xsmall)">
												<input type="text" name="numero" id="numero"  value="" placeholder="N°" />
											</div>
											<div class="2u$ 12u$(xsmall)">
											<?php $fcha = date("d/m/Y");?>
												<input type="text" name="numero" id="fecha" readonly value="<?php echo $fcha;?>" placeholder="Fecha" />
											</div>

											<!--<div class="2u 12u$(xsmall)">
												<input type="text" name="codigo" id="codigo" value="" placeholder="Codigo"/>
											</div>-->

											<div class="4u 12u$(xsmall)">
												<input type="text" name="codigo" id="codigo" value="" placeholder="Descripcion Producto"/>
											</div>

											<div class="2u 12u$(xsmall)">
												<input type="text" name="cantidad" id="cantidad" value="" placeholder="cantidad" onkeyup="format(this)" onchange="format(this)"/>
											</div>

											<div class="2u$ 12u$(xsmall)">
												<input type="text" name="precio" id="precio" value="" placeholder="Precio" onkeyup="format(this)" onchange="format(this)"/>
											</div>								
										</div>
										<br>
										<div class="12u$">
											<ul class="actions" style="text-align: center">
												<li><input type="button" value="Agregar" class="principal" id="add_row"/></li>
											</ul>
										</div>
										<br>
										<br>

										<div class="table-wrapper">
											<table id="tabla_factura">
												<thead>
													<tr>
														<th>N</th>
														<th>Codigo</th>
														<th>Descripción</th>
														<th>Cantidad</th>
														<th>Precio</th>
														<th>Subtotal</th>
														<th>Impuesto</th>
														<th>Total</th>
														<td>Acción</td>
													</tr>
												</thead>
												<tbody id="content_table">
													<tr>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<td colspan="3"></td>
														<td id="total_catidad">0.00</td>
														<td id="total_precio">0.00</td>
														<td id="total_subtotales">0.00</td>
														<td id="total_impuesto">0.00</td>
														<td id="total_total">0.00</td>
														<td></td>
													</tr>
												</tfoot>
											</table>
										</div>
									</form>
								</section>
								<br> 
								<br>
								<br>
							</div>
						</section>
					</article>

				<!-- Footer -->
					<footer id="footer">
						<ul class="icons">
							<li><a href="t" target="_blank" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="" class="icon fa-facebook" target="_blank"><span class="label">Facebook</span></a></li>
							<li><a href="" class="icon fa-instagram" target="_blank"><span class="label">Instagram</span></a></li>
						</ul>
						<ul class="copyright">
							<li>Wexty Perú</li><li>Diseñado por chetsito <a href="#"></a></li>
					</footer>
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			<script src="lib/js/invoice.js"></script>
			
			<script>
			$(".selectpicker").on("change", function(){
				$('#name').val($(".selectpicker option:selected").text());
			});
			</script>
	  								
	</body>
</html>
