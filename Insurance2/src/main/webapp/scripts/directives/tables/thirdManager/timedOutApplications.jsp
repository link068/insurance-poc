<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-heading">
      	List of Timed Out Applications
      </div> <!-- /.panel-heading -->
      <div class="panel-body">
        <table class="table table-striped table-bordered table-hover" id="example">
          <thead>
            <tr>
              <th>Application Id</th>
              <th>Assigned Employee</th>
              <th>Original Submission Date</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
          	<tr class="gradeA">
            	<td>A2342</td>
            	<td>John Doe</td>
            	<td>2017-June-21</td>
            	<td>
            		<a ng-click=""><i class="fa fa-hand-o-left"></i> Re-assign</a>
            		<a ng-click=""><i class="fa fa-info"></i> View details</a>
            		<a ng-click=""><i class="fa fa-hand-o-right"></i> Send back to pending</a>
            	</td>
            </tr>
            <tr class="gradeA" ng-repeat="application in timedApplications">
            	<td>{{application.appplicationId}}</td>
            	<td>{{application.assignedEmployee}}</td>
            	<td>{{application.assignedDate}}</td>
            	<td><img ng-click=""></td>
            </tr>
          </tbody>
        </table>              <!-- /.table-responsive -->
      </div>            <!-- /.panel-body -->
    </div>         <!-- /.panel -->
  </div>      <!-- /.col-lg-12 -->
</div>