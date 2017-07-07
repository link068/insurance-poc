<!doctype html>
<html class="no-js">
<head>
	<%@include file="imports/imports.jsp" %>
	<script type="text/javascript" src="scripts/controllers/index.js"></script>
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Font awesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
   
<body>

	<div ng-app="sbAdminApp" controller="IndexController">
	
	 	<div id="wrapper">
	
	    <!-- Navigation -->
	        
	    <header></header>
	    <!-- /.navbar-top-links -->
	    <!-- /.navbar-static-side -->
	
	    <div id="page-wrapper" style="min-height: 561px;">
	
			  <div class="row">
		      <div class="col-lg-8">
		          <h1 class="page-header">Welcome To Insurance Company</h1>
		      </div>
		      
			  </div>
		
				<div class="row">
					<div class="col-md-5">
						<img class="img-responsive" src="images/insurance.jpg" alt=""/>
					</div>
			    <div class="col-md-7">
			    	<div style="font-size:30px">
							Select a product to get insured
						</div>
			 
						<ul style="list-style-type:none;display:inline-block;float:left;">
							<li style="font-size:40px;float:left;padding:12px"><a href=""><i class="fa fa-car" aria-hidden="true" href="newApplication"></i> Auto</a></li>
							<li style="font-size:40px;float:left;padding:12px"><a href=""><i class="fa fa-home" aria-hidden="true" href="newApplication"></i> Home</a></li>
							<li style="font-size:40px;float:left;padding:12px"><a href=""><i class="fa fa-ship" aria-hidden="true" href="newApplication"></i> Boat</a></li>
							<li style="font-size:40px;float:left;padding:12px"><a href=""><i class="fa fa-truck" aria-hidden="true" href="newApplication"></i> RV/Trailer</a></li>
							<li style="font-size:40px;float:left;padding:12px"><a href=""><i class="fa fa-search" aria-hidden="true" href="newApplication"></i> More</a></li>
						</ul>
						<ul style="list-style-type:none;display:inline-block;float:left;">
							<li>&nbsp;</li>
							<li>&nbsp;</li>
							<li><a href="showLogin" style="color:green;font-size:30px;font-weight:bold;"> Or Login <i class="fa fa-user-circle"></i></a></li>
						</ul>
					</div>
				</div> <!-- end of row -->
			</div> <!-- end of page wrapper -->
		</div>	<!-- end of wrapper -->
	</div>	<!-- end of ng-app -->

</body>

</html>