<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title>Manager Home Page</title>

	<!-- <script src="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.css"></script> -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css"/>

	<script type="text/javascript" src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#example').DataTable();
		} );
	</script>
	
	<%@include file="../imports/imports.jsp" %>
	<script type="text/javascript" src="scripts/controllers/manager.js"></script>
	<script type="text/javascript" src="scripts/directives/tables/manager/applicationTable.js"></script>
	<script type="text/javascript" src="scripts/directives/tables/manager/customerTable.js"></script>
	<script type="text/javascript" src="scripts/directives/tables/manager/workingApplicationsTable.js"></script>
	<script type="text/javascript" src="scripts/directives/tables/manager/finishedApplicationsTable.js"></script>
	<script type="text/javascript" src="scripts/model/ApplicationView.js"></script>
	
	<!-- chart stuff -->
	<script type="text/javascript" src="bower_components/angular-chart.js/dist/angular-chart.min.js"></script>	
	<link rel="stylesheet" type="text/css" ref="bower_components/angular-chart.js/dist/angular-chart.css"/>	
	<script type="text/javascript" src="scripts/controllers/chartsController.js"></script>
	<script type="text/javascript" src="scripts/directives/charts/charts.js"></script>

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
<div id="wrapper" ng-app="sbAdminApp" ng-controller="Manager">

	<header></header>
	
	<h2 style="color:blue">Welcome, {{currentUser}}</h2>
	
  <div class="row">
		<div class="col-lg-12">
		    <h1 class="page-header" style="text-align:center">Manager Dashboard</h1>
		</div>
  </div>
  
	<div class="row" style="text-align:center;">
   	<stats class="col-centered" number={{(applications|filter:{status:'New'}).length}} comments="View New Applications" colour="primary" type="file-text" ng-click="applicationsTable = !applicationsTable"></stats>
<!--    	<stats class="col-centered" number={{customers.length}} comments="Customers" colour="primary" type="users" ng-click="customersTable = !customersTable"></stats> -->
  	<stats class="col-centered" number={{(applications|filter:{status:'!New'}|filter:{status:'!Finalized'}|filter:{status:'!Declined'}).length}} comments="Pending Applications" colour="yellow" type="folder-open" ng-click="pending = !pending"></stats>
	  	<stats class="col-centered" number={{(applications|filter:{status:'Finalized'}).length}} comments="Finished Applications" colour="green" type="check" ng-click="finished = !finished"></stats>
	  	<stats class="col-centered" comments="Charts" colour="primary" type="users" ng-click="charts = !charts"></stats>
  </div>
  
  <div class="col-lg-12">
  	<application-table ng-show="applicationsTable"></application-table>
  	<working-applications-table ng-show="pending"></working-applications-table>
  	<finished-applications-table ng-show="finished"></finished-applications-table>
  	<charts ng-show="charts"></charts>
<!--   	<customer-table ng-show="customersTable"></customer-table> -->
 	</div>
</div>	<!-- wrapper -->

</body>
</html>