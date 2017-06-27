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
  	<stats number=placeholder comments="New Applications" colour="red" type="file-text"></stats>
  	<stats number=placeholder comments="Pending Applications" colour="yellow" type="folder-open"></stats>
  	<stats number=placeholder comments="Finalized Applications" colour="green" type="check"></stats>
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
                    <th>Email</th>
                    <th>Address</th>
                    <th>Phone Number</th>
                    <th>SSN</th>
                    <th>Occupation</th>
                    <th>Highest Education</th>
                    <th>Salary</th>
                    <th>DOB</th>
                    <th>Application ID</th>
                    <th>Application Status</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="odd gradeX">
                    <td>C123</td>
                    <td>John Doe</td>
                    <td>jd@gmail.com</td>
                    <td>123 1st St., San Jose, CA 95888</td>
                    <td class="center">408-123-4567</td>
                    <td>123-45-6789</td>
                    <td>Student</td>
                    <td>High School</td>
                    <td>$20,000</td>
                    <td>1998-Jul-04</td>
                    <td>A456</td>
                    <td>Pending</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="even gradeC">
                    <td>C456</td>
                    <td>Jane Cool</td>
                    <td>jc23@gmail.com</td>
                    <td>4567 Bush St., San Francisco, CA 85478</td>
                    <td class="center">584-123-4567</td>
                    <td>987-66-5432</td>
                    <td>Teacher</td>
                    <td>Bachelor degree</td>
                    <td>$60,000</td>
                    <td>1993-Mar-11</td>
                    <td>A987</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="odd gradeA">
                    <td>C789</td>
                    <td>Mike Thompson</td>
                    <td>mt79@gmail.com</td>
                    <td>6544 Stockton Ave., Sacramento, CA 96874</td>
                    <td class="center">859-123-6585</td>
                    <td>985-41-8579</td>
                    <td>Finance Manager</td>
                    <td>Master's</td>
                    <td>$150,000</td>
                    <td>1980-Dec-24</td>
                    <td>A856</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="odd gradeX">
                    <td>C123</td>
                    <td>John Doe</td>
                    <td>jd@gmail.com</td>
                    <td>123 1st St., San Jose, CA 95888</td>
                    <td class="center">408-123-4567</td>
                    <td>123-45-6789</td>
                    <td>Student</td>
                    <td>High School</td>
                    <td>$20,000</td>
                    <td>1998-Jul-04</td>
                    <td>A456</td>
                    <td>Pending</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="even gradeC">
                    <td>C456</td>
                    <td>Jane Cool</td>
                    <td>jc23@gmail.com</td>
                    <td>4567 Bush St., San Francisco, CA 85478</td>
                    <td class="center">584-123-4567</td>
                    <td>987-66-5432</td>
                    <td>Teacher</td>
                    <td>Bachelor degree</td>
                    <td>$60,000</td>
                    <td>1993-Mar-11</td>
                    <td>A987</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="odd gradeA">
                    <td>C789</td>
                    <td>Mike Thompson</td>
                    <td>mt79@gmail.com</td>
                    <td>6544 Stockton Ave., Sacramento, CA 96874</td>
                    <td class="center">859-123-6585</td>
                    <td>985-41-8579</td>
                    <td>Finance Manager</td>
                    <td>Master's</td>
                    <td>$150,000</td>
                    <td>1980-Dec-24</td>
                    <td>A856</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="odd gradeX">
                    <td>C123</td>
                    <td>John Doe</td>
                    <td>jd@gmail.com</td>
                    <td>123 1st St., San Jose, CA 95888</td>
                    <td class="center">408-123-4567</td>
                    <td>123-45-6789</td>
                    <td>Student</td>
                    <td>High School</td>
                    <td>$20,000</td>
                    <td>1998-Jul-04</td>
                    <td>A456</td>
                    <td>Pending</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="even gradeC">
                    <td>C456</td>
                    <td>Jane Cool</td>
                    <td>jc23@gmail.com</td>
                    <td>4567 Bush St., San Francisco, CA 85478</td>
                    <td class="center">584-123-4567</td>
                    <td>987-66-5432</td>
                    <td>Teacher</td>
                    <td>Bachelor degree</td>
                    <td>$60,000</td>
                    <td>1993-Mar-11</td>
                    <td>A987</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="odd gradeA">
                    <td>C789</td>
                    <td>Mike Thompson</td>
                    <td>mt79@gmail.com</td>
                    <td>6544 Stockton Ave., Sacramento, CA 96874</td>
                    <td class="center">859-123-6585</td>
                    <td>985-41-8579</td>
                    <td>Finance Manager</td>
                    <td>Master's</td>
                    <td>$150,000</td>
                    <td>1980-Dec-24</td>
                    <td>A856</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="odd gradeX">
                    <td>C123</td>
                    <td>John Doe</td>
                    <td>jd@gmail.com</td>
                    <td>123 1st St., San Jose, CA 95888</td>
                    <td class="center">408-123-4567</td>
                    <td>123-45-6789</td>
                    <td>Student</td>
                    <td>High School</td>
                    <td>$20,000</td>
                    <td>1998-Jul-04</td>
                    <td>A456</td>
                    <td>Pending</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="even gradeC">
                    <td>C456</td>
                    <td>Jane Cool</td>
                    <td>jc23@gmail.com</td>
                    <td>4567 Bush St., San Francisco, CA 85478</td>
                    <td class="center">584-123-4567</td>
                    <td>987-66-5432</td>
                    <td>Teacher</td>
                    <td>Bachelor degree</td>
                    <td>$60,000</td>
                    <td>1993-Mar-11</td>
                    <td>A987</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="odd gradeA">
                    <td>C789</td>
                    <td>Mike Thompson</td>
                    <td>mt79@gmail.com</td>
                    <td>6544 Stockton Ave., Sacramento, CA 96874</td>
                    <td class="center">859-123-6585</td>
                    <td>985-41-8579</td>
                    <td>Finance Manager</td>
                    <td>Master's</td>
                    <td>$150,000</td>
                    <td>1980-Dec-24</td>
                    <td>A856</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="odd gradeX">
                    <td>C123</td>
                    <td>John Doe</td>
                    <td>jd@gmail.com</td>
                    <td>123 1st St., San Jose, CA 95888</td>
                    <td class="center">408-123-4567</td>
                    <td>123-45-6789</td>
                    <td>Student</td>
                    <td>High School</td>
                    <td>$20,000</td>
                    <td>1998-Jul-04</td>
                    <td>A456</td>
                    <td>Pending</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="even gradeC">
                    <td>C456</td>
                    <td>Jane Cool</td>
                    <td>jc23@gmail.com</td>
                    <td>4567 Bush St., San Francisco, CA 85478</td>
                    <td class="center">584-123-4567</td>
                    <td>987-66-5432</td>
                    <td>Teacher</td>
                    <td>Bachelor degree</td>
                    <td>$60,000</td>
                    <td>1993-Mar-11</td>
                    <td>A987</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                  <tr class="odd gradeA">
                    <td>C789</td>
                    <td>Mike Thompson</td>
                    <td>mt79@gmail.com</td>
                    <td>6544 Stockton Ave., Sacramento, CA 96874</td>
                    <td class="center">859-123-6585</td>
                    <td>985-41-8579</td>
                    <td>Finance Manager</td>
                    <td>Master's</td>
                    <td>$150,000</td>
                    <td>1980-Dec-24</td>
                    <td>A856</td>
                    <td>New</td>
                    <td class="center"><a href=""><i class="fa fa-info"> View details</i></a>   <a href=""><i class="fa fa-check-square"></i> Verify</a>  <a href=""><i class="fa fa-send"> Send</i></a></td>
                  </tr>
                </tbody>
              </table>              <!-- /.table-responsive -->
            </div>            <!-- /.panel-body -->
         </div>         <!-- /.panel -->
      </div>      <!-- /.col-lg-12 -->
	  </div>	  <!-- /.row -->
</div>

</body>
</html>