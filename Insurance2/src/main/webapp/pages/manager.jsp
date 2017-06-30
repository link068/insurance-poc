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
	</head>
<body>
<div id="wrapper" ng-app="sbAdminApp" controller="ManagerController">

	<header></header>
	
  <div class="row">
      <div class="col-lg-12">
          <h1 class="page-header" style="text-align:center">Manager Dashboard</h1>
      </div>
  </div>
  
	<div class="row" style="margin-left:35em">
   	<stats number=placeholder comments="View Applications" colour="yellow" type="file-text" ng-click="applicationsTable = !applicationsTable"></stats>
   	<stats number=placeholder comments="Customers" colour="primary" type="users" ng-click="customersTable = !customersTable"></stats>
  </div>
  <div class="col-lg-12">
   <!-- /.row -->
  	<application-table ng-show="applicationsTable"></application-table>
  	<customer-table ng-show="customersTable"></customer-table>
  	</div>
</div>	<!-- wrapper -->

</body>
</html>