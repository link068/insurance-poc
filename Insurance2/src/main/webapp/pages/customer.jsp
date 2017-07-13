<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title>Customer Home Page</title>

	
	<%@include file="../imports/imports.jsp" %>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#example').DataTable();
		} );
	</script>
	<script src="scripts/model/NewApplicationForm.js"></script>
	<script src="scripts/factory/NewApplicationFactory.js"></script>
	<script type="text/javascript" src="scripts/controllers/customer.js"></script>
	<script type="text/javascript" src="scripts/directives/tables/customer/applicationStatusTable.js"></script>
	<script type="text/javascript" src="scripts/directives/tables/customer/insuranceTable.js"></script>
	<script src="scripts/model/ApplicationView.js"></script>
	<script src="scripts/directives/applications/application.js"></script>
	
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
    
    <h2 style="color:blue">Welcome, {{currentUser}}</h2>
		
    <div id="page-wrapper" style="min-height: 561px;">
  		<div class="row">
	      <div class="col-lg-12">
	          <h1 class="page-header" style="text-align:center">Customer Dashboard</h1>
	      </div>
      	<!-- /.col-lg-12 -->
  		</div>
		  <div class="row" style="margin-left:20em">
		  	<stats class="col-centered" number="1" comments="Apply For Insurance" colour="green" type="pencil" data-toggle="modal" data-target="#myModal7"></stats></a>
		  	<stats class="col-centered" number={{(customerApplications|filter:'!'+{status:'accepted'}).length}} comments="Application Status" colour="yellow" type="check" ng-click="applicationsStatusTable=!applicationsStatusTable"></stats>
		  	<stats class="col-centered" number={{(customerApplications|filter:{status:'Finalized'}).length}} comments="View Insurance" colour="primary" type="file-text" ng-click="insurancesTable=!insurancesTable"></stats>
		  </div> <!-- /.row -->
		  <div class="col-lg-12">
		<application></application>
  		<application-status-table ng-show="applicationsStatusTable"></application-status-table>
  		<insurance-table ng-show="insurancesTable"></insurance-table>
  		</div>
		</div>  <!-- /#page-wrapper -->
	</div> <!-- wrapper -->
                
</body>
</html>