<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-heading">
      	List of Finished Applications
      </div> <!-- /.panel-heading -->
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
          	<tr class="gradeA">
			       	<td>A5678</td>
			       	<td>2017-June-15</td>
			       	<td>Property</td>
			       	<td>Approved</td>
			       	<td><a ng-click=""><i class="fa fa-info"></i> View details</a></td>
			       </tr>
						<tr class="gradeA" ng-repeat="application in customerApplications | filter: !{status: 'accepted'}">
							<td>{{application.dateApplied}}</td>
							<td>{{application.policy}}</td>
							<td><img ng-click=""></td>
						</tr>
        	</tbody>
        </table> <!-- /.table-responsive -->
      </div> <!-- /.panel-body -->
    </div> <!-- /.panel -->
  </div> <!-- /.col-lg-12 -->
</div>