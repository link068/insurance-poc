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
</head>


<body>
	<div id="wrapper" ng-app="sbAdminApp" controller="CustomerController">
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
		  	<stats number=placeholder comments="Apply For Insurance" colour="green" type="pencil"></stats>
		  	<stats number=placeholder comments="Application Status" colour="yellow" type="check"></stats>
		  	<stats number=placeholder comments="View Insurance" colour="primary" type="file-text"></stats>
		  </div> <!-- /.row -->
  		<div class="row">
     		<div class="col-lg-12">
        	<div class="panel panel-default">
           	<div class="panel-heading">
               My Application(s)
           	</div> <!-- /.panel-heading -->
						<div class="panel-body">
						  <table width="100%" class="table table-striped table-bordered table-hover" id="example">
						    <thead>
						      <tr>
						       <th>Customer ID</th>
						       <th>Customer name</th>
						       <th>Application ID</th>
						       <th>Application Status</th>
						       <th>Contact</th>
						       <th>Actions</th>
						      </tr>
						    </thead>
						    <tbody>
									<tr class="odd gradeX">
									  <td>C123</td>
									  <td>John Doe</td>
									  <td>A345</td>
									  <td>New</td>
									  <td class="center">408-123-4567</td>
									  <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>  <a ng-show='applicationStatus="new"'><i class="fa fa-pencil-square-o"></i>  Edit</a></td>
									</tr>
									<tr class="even gradeC">
									  <td>C123</td>
									  <td>John Doe</td>
									  <td>A456</td>
									  <td>Pending</td>
									  <td class="center">408-123-4567</td>
									  <td class="center"><a href=""><i class="fa fa-info"> View details</i></a></td>
									</tr>
					      </tbody>
				     	</table> <!-- /.table-responsive -->
						</div>  <!-- /.panel-body -->
       		</div> <!-- /.panel -->
   			</div> <!-- /.col-lg-12 -->
		  </div> <!-- /.row -->
		</div>  <!-- /#page-wrapper -->
	</div> <!-- wrapper -->
                
</body>
</html>