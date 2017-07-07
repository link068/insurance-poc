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
            <tr class="gradeA" ng-repeat="application in applications | filter: {status:'Finalized'}">
            	<td>{{application.applicationId}}</td>
            	<td>{{application.dateApplied | secondsToDateTime | date:'medium'}}</td>
            	<td>
			          <button class="btn btn-primary" data-toggle="modal" data-target="#myModal3" ng-click="viewDetails(application);">
			          	<i class="fa fa-info"></i> View details
			          </button>
            	</td>
            </tr>
          </tbody>
        </table>              <!-- /.table-responsive -->
      </div>            <!-- /.panel-body -->
    </div>         <!-- /.panel -->
  </div>      <!-- /.col-lg-12 -->
  <!-- Modal -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel">View Details</h4>
	      </div>
	      <div class="modal-body">
	        <p style="color:black;"><b>Application Id:</b> {{details.applicationId}}</p>
	        <p style="color:black;">Application Id:<span class="form-control" style="width: 60%;">{{details.applicationId}}</span></p>
          <p style="color:black;">Application Name:<span class="form-control" style="width: 60%;">{{details.name}}</span></p>
          <p style="color:black;">Email:<span class="form-control" style="width: 60%;">{{details.email}}</span></p>
          <p style="color:black;">Mobile:<span class="form-control" style="width: 60%;">{{details.mobile}}</span></p>
          <p style="color:black;">Address:<span class="form-control" style="width: 60%;">{{details.address}}</span></p>
          <p style="color:black;">Ssn:<span class="form-control" style="width: 60%;">{{details.ssn}}</span></p>
          <p style="color:black;">Dob:<span class="form-control" style="width: 60%;">{{details.dob}}</span></p>
          <p style="color:black;">Occupation:<span class="form-control" style="width: 60%;">{{details.occupation}}</span></p>
          <p style="color:black;">Salary:<span class="form-control" style="width: 60%;">{{details.salary}}</span></p>
          <p style="color:black;">Education:<span class="form-control" style="width: 60%;">{{details.education}}</span></p>
          <p style="color:black;">Status:<span class="form-control" style="width: 60%;">{{details.status}}</span></p>
          <p style="color:black;">Policy:<span class="form-control" style="width: 60%;">{{details.policy}}</span></p>
        </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div> <!-- /.modal-content -->
	  </div> <!-- /.modal-dialog -->
	</div> <!-- /.modal -->
</div>