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
	</head>
<body>

<div>
  <div class="row">
      <div class="col-lg-12">
          <h1 class="page-header" style="text-align:center">Manager Dashboard</h1>
      </div>
  </div>
	<div class="row" style="margin-left:35em">
   	<stats number=placeholder comments="View Applications" colour="yellow" type="file-text"></stats>
   	<stats number=placeholder comments="Customers" colour="primary" type="users"></stats>
   </div>
   
   <!-- /.row -->
	  <div class="row">
      <div class="col-lg-12">
         <div class="panel panel-default">
            <div class="panel-heading">
                List of Applications
            </div>
            <!-- /.panel-heading -->
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
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="even gradeC">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="odd gradeA">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="odd gradeX">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="even gradeC">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="odd gradeA">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="odd gradeX">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="even gradeC">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="odd gradeA">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="odd gradeX">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="even gradeC">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                   <tr class="odd gradeA">
                     <td>C123</td>
                     <td>John Doe</td>
                     <td>A456</td>
                     <td>Pending</td>
                     <td class="center">4081234567</td>
                     <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Approve</a>  <a href=""><i class="fa fa-trash"> Decline</i></a></td>
                   </tr>
                 </tbody>
               </table>
               <!-- /.table-responsive -->
            </div>
            <!-- /.panel-body -->
         </div>
         <!-- /.panel -->
      </div>
      <!-- /.col-lg-12 -->
	  </div>
	  <!-- /.row -->
   
</div>


</body>
</html>