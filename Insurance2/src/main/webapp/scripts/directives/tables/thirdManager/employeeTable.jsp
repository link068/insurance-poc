<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-heading">
      	View employees
      </div> <!-- /.panel-heading -->
      <div class="panel-body">
        <table class="table table-striped table-bordered table-hover" id="example">
          <thead>
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>Assigned Application</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr class="gradeA" ng-repeat="employee in loginEntities | filter: {role: 'third party employee'}">
            	<td>{{employee.name}}</td>
            	<td>{{employee.email}}</td>
            	<td>{{employee.appId}}</td>
            	<td><a ng-click=""><i class="fa fa-envelope"></i> Send message</a></td>
            </tr>
          </tbody>
        </table>              <!-- /.table-responsive -->
      </div>            <!-- /.panel-body -->
    </div>         <!-- /.panel -->
  </div>      <!-- /.col-lg-12 -->
</div>