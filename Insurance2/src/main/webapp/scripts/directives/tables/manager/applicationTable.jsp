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
               <th>Application ID</th>
               <th>Customer ID</th>
               <th>Customer name</th>
               <th>Application Status</th>
               <th>Agent Contact</th>
               <th>Actions</th>
             </tr>
           </thead>
           <tbody>
            <tr class="gradeA" ng-repeat="application in applications">
							<td>{{application.applicationId}}</td>
							<td>{{application.email}}</td>
							<td>{{application.name}}</td>
							<td>{{application.status}}</td>
							<td>{{application.assignedEmployee}}</td>
							<td class="center"><a href=""><i class="fa fa-info"> View details</i></a>
								<a href=""><i class="fa fa-check"></i> Approve</a>
								<a href=""><i class="fa fa-times"> Decline</i></a>
                <a href=""><i class="fa fa-send"> Send to 3rd party</i></a></td>
						</tr>
          </tbody>
        </table> <!-- /.table-responsive -->
      </div>  <!-- /.panel-body -->
    </div> <!-- /.panel -->
  </div> <!-- /.col-lg-12 -->
</div> 