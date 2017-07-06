<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        List of Finished Applications
      </div>
      <!-- /.panel-heading -->
      <div class="panel-body">
        <table width="100%" class="table table-striped table-bordered table-hover" id="example">
          <thead>
            <tr>
              <th>Application Id</th>
              <th>Date Applied</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr class="gradeA" ng-repeat="application in applications | filter: {status:'finalized'}">
            	<td>{{application.applicationId}}</td>
            	<td>{{application.dateApplied | secondsToDateTime | date:'medium'}}</td>
            	<td>
            		<a ng-click=""><i class="fa fa-info"></i> View details</a>
            		<a ng-click=""><i class="fa fa-check-square-o"> Notify manager</i></a>
            	</td>
            </tr>
          </tbody>
        </table>              <!-- /.table-responsive -->
      </div>            <!-- /.panel-body -->
    </div>         <!-- /.panel -->
  </div>      <!-- /.col-lg-12 -->
</div>