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
		<script type="text/javascript" src="scripts/controllers/third.js"></script>
		<script type="text/javascript" src="scripts/directives/tables/third/newApplicationsTable.js"></script>
		<script type="text/javascript" src="scripts/directives/tables/third/pendingApplicationsTable.js"></script>
		<script type="text/javascript" src="scripts/directives/tables/third/finishedApplicationsTable.js"></script>
	</head>
<body>

<div id="wrapper" ng-app="sbAdminApp" controller="ThirdController">

	<header></header>
	
  <div class="row">
    <div class="col-lg-12">
      <h1 class="page-header" style="text-align:center">Third Party Dashboard</h1>
    </div>
  </div>
  <div class="row" style="margin-left:20em">
  	<stats number=placeholder comments="New Applications" colour="red" type="file-text" ng-click="new = !new"></stats>
  	<stats number=placeholder comments="Pending Applications" colour="yellow" type="folder-open" ng-click="pending = !pending"></stats>
  	<stats number=placeholder comments="Finalized Applications" colour="green" type="check" ng-click="finished = !finished"></stats>
  </div>
  <div class="col-lg-12">
  <!-- /.row -->
  	<new-applications-table ng-show="new"></new-applications-table>
  	<pending-applications-table ng-show="pending"></pending-applications-table>
  	<finished-applications-table ng-show="finished"></finished-applications-table>
  <!-- /.row -->
  </div>
</div>

</body>
</html>