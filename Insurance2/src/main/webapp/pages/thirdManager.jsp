<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		
		<title>Third Party Home Page</title>

		<!-- <script src="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.css"></script> -->
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css"/>
 
		<script type="text/javascript" src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').DataTable();
			} );
		</script>
		
		<%@include file="../imports/imports.jsp" %>
		<script type="text/javascript" src="scripts/controllers/thirdManager.js"></script>
		<script type="text/javascript" src="scripts/directives/tables/thirdManager/assignApplicationTable.js"></script>
		<script type="text/javascript" src="scripts/directives/tables/thirdManager/employeeTable.js"></script>
		<script type="text/javascript" src="scripts/directives/tables/thirdManager/timedOutApplications.js"></script>
		
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

<div id="wrapper" ng-app="sbAdminApp" controller="ThirdManagerController">

	<header></header>
	
  <div class="row">
    <div class="col-lg-12">
      <h1 class="page-header" style="text-align:center">Third Party Manager Dashboard</h1>
    </div>
  </div>
  <div class="row" style="margin-left:20em">
  	<stats class="col-centered" number="1" comments="Assign Applications" colour="red" type="file-text" ng-click="assignTable = !assignTable"></stats>
  	<stats class="col-centered" number="1" comments="Timed Out Applications" colour="yellow" type="folder-open" ng-click="timedTable = !timedTable"></stats>
  	<stats class="col-centered" number="2" comments="View Employees" colour="green" type="users" ng-click="employeeTable = !employeeTable"></stats>
  </div>
  <div class="col-lg-12">
  <!-- /.row -->
  	<assign-application-table ng-show="assignTable"></assign-application-table>
  	<timed-out-applications ng-show="timedTable"></timed-out-applications>
  	<employee-table ng-show="employeeTable"></employee-table>
  <!-- /.row -->
  </div>
</div>

</body>
</html>