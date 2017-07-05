<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title>Customer Home Page</title>

	<!-- <script src="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.css"></script> -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css"/>

	<script type="text/javascript" src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#example').DataTable();
		} );
	</script>
	<%@include file="../imports/imports.jsp" %>
	<script type="text/javascript" src="scripts/controllers/customer.js"></script>
	<script type="text/javascript" src="scripts/directives/tables/customer/applicationStatusTable.js"></script>
	<script type="text/javascript" src="scripts/directives/tables/customer/insuranceTable.js"></script>
	
	<style type="text/css">
		.col-centered {
	    display:inline-block;
	    float:none;
	    /* reset the text-align */
	    text-align:left;
	    /* inline-block space fix */
	    margin-right:-4px;
		}
	</style>
</head>

<body>
	<div id="wrapper" ng-app="sbAdminApp" ng-controller="CustomerController">
    <!-- Navigation -->
    <header></header>
    <!-- /.navbar-top-links -->
    <!-- /.navbar-static-side -->

    <div id="page-wrapper" style="min-height: 561px;">
  		<div class="row">
	      <div class="col-lg-12">
	          <h1 class="page-header" style="text-align:center">Customer Dashboard</h1>
	      </div>
      	<!-- /.col-lg-12 -->
  		</div>
		  <div class="row" style="margin-left:20em">
		  	<a href="newApplication"><stats class="col-centered" number="1" comments="Apply For Insurance" colour="green" type="pencil"></stats></a>
		  	<stats class="col-centered" number={{(customerApplications|filter:'!'+{status:'accepted'}).length}} comments="Application Status" colour="yellow" type="check" ng-click="applicationsStatusTable=!applicationsStatusTable"></stats>
		  	<stats class="col-centered" number={{(customerApplications|filter:{status:'accepted'}).length}} comments="View Insurance" colour="primary" type="file-text" ng-click="insurancesTable=!insurancesTable"></stats>
		  </div> <!-- /.row -->
		  <div class="col-lg-12">
  		<application-status-table ng-show="applicationsStatusTable"></application-status-table>
  		<insurance-table ng-show="insurancesTable"></insurance-table>
  		</div>
		</div>  <!-- /#page-wrapper -->
	</div> <!-- wrapper -->
                
</body>
</html>