<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-heading">
      	List of Pending Applications
      </div> <!-- /.panel-heading -->
      <div class="panel-body">
        <table class="table table-striped table-bordered table-hover" id="example">
          <thead>
            <tr>
              <th>Application Id</th>
              <th>Date Applied</th>
              <th>Status</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr class="gradeA" ng-repeat="application in newApplications">
            	<td>{{application.applicationId}}</td>
            	<td>{{application.dateApplied | secondsToDateTime | date:'medium'}}</td>
            	<td>{{application.status}}</td>
            	<td>
            		<!-- Button trigger modal -->
			          <button class="btn btn-primary" data-toggle="modal" data-target="#assignModal" ng-click="assignApp($index, application);">
			          	<i class="fa fa-hand-o-left"></i> Assign
			          </button>
			          <button class="btn btn-primary" data-toggle="modal" data-target="#myModal" ng-click="viewDetails(application);">
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
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
	
	<!-- Modal -->
	<div class="modal fade" id="assignModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel">View Details</h4>
	      </div>
	      <div class="modal-body">
	        <p style="color:black;"><b>Application Id:</b> {{assignAppDetails.applicationId}}</p>
	        <p style="color:black;">Application Id:<span class="form-control" style="width: 60%;">{{assignAppDetails.applicationId}}</span></p>
          <p style="color:black;">Application Name:<span class="form-control" style="width: 60%;">{{assignAppDetails.name}}</span></p>
          <p style="color:black;">Email:<span class="form-control" style="width: 60%;">{{assignAppDetails.email}}</span></p>
          <p style="color:black;">Policy:<span class="form-control" style="width: 60%;">{{assignAppDetails.policy}}</span></p>
        </div>
        <form style="padding-left: 1em">
        	<select name="selected" id="selected" ng-model="selected">
        		<option ng-repeat="employee in employees" value={{employee.email}}>{{employee.name}}</option>
        	</select>
	      <div class="modal-footer">
	      	<button type="button" class="btn btn-success" data-dismiss="modal" ng-click="assignNow();">Assign</button>
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </form>
	    </div> <!-- /.modal-content -->
	  </div> <!-- /.modal-dialog -->
	</div> <!-- /.modal -->
  
</div>