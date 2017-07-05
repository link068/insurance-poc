<div class="row">
      <div class="col-lg-12">
         <div class="panel panel-default">
            <div class="panel-heading">
                List of New Applications
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
                	<tr class="gradeA">
                  	<td>A2342</td>
                  	<td>2017-June-20</td>
                  	<td>
                  		<a ng-click=""><i class="fa fa-folder-open"> Review</i></a>
                  	</td>
                  </tr>
                  <tr class="gradeA" ng-repeat="application in applications  | filter: {status:'new'}">
                  	<td>{{application.applicationId}}</td>
                  	<td>{{application.dateApplied}}</td>
                  	<td><img ng-click=""></td>
                  </tr>
                </tbody>
              </table>              <!-- /.table-responsive -->
            </div>            <!-- /.panel-body -->
         </div>         <!-- /.panel -->
      </div>      <!-- /.col-lg-12 -->
	  </div>