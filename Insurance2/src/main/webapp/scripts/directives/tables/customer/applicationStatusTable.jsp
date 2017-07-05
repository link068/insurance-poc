<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
		       List of Pending Applications
		  </div>
		  <div class="panel-body">
		    <table width="100%" class="table table-striped table-bordered table-hover" id="example">
		      <thead>
		        <tr>
		          <th>Application Id</th>
		          <th>Date Applied</th>
		          <th>Policy</th>
		          <th>Status</th>
		          <th>Actions</th>
		        </tr>
		      </thead>
		      <tbody>
		        <tr class="gradeA" ng-repeat="application in customerApplications | filter: '!'+{status: 'accepted'}">
		        	<td>{{application.applicationId}}</td>
		        	<td>{{application.dateApplied}}</td>
		        	<td>{{application.policy}}</td>
		        	<td>{{application.status}}</td>
		        	<td><a ng-click=""><i class="fa fa-info"></i> View details</a></td>
		        </tr>
		      </tbody>
		    </table>              <!-- /.table-responsive -->
		  </div>            <!-- /.panel-body -->
		</div>         <!-- /.panel -->
	</div>      <!-- /.col-lg-12 -->
</div>