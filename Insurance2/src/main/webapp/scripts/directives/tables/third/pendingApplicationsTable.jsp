<div class="row">
  
  <!-- Modal -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel">View Details</h4>
	      </div>
	      <div class="modal-body">
	        <p style="color:black;"><b>Application Id:</b> {{details.applicationId}}</p>
	        <p style="color:black;">Application Id:<span class="form-control" style="width: 60%;">{{details.applicationId}}</span></p>
          <p style="color:black;">Application Name:<input class="form-control" style="width: 60%;" value={{details.name}} ng-model="details.name"></input></p>
          <p style="color:black;">Email:<input class="form-control" style="width: 60%;" value={{details.email}} ng-model="details.email"></input></p>
          <p style="color:black;">Mobile:<input class="form-control" style="width: 60%;" value={{details.mobile}} ng-model="details.mobile"></input></p>
          <p style="color:black;">Address:<input class="form-control" style="width: 60%;" value={{details.address}} ng-model="details.address"></input></p>
          <p style="color:black;">Ssn:<input class="form-control" style="width: 60%;" value={{details.ssn}} ng-model="details.ssn"></input></p>
          <p style="color:black;">Dob:<input class="form-control" style="width: 60%;" value={{details.dob}} ng-model="details.dob"></input></p>
          <p style="color:black;">Occupation:<input class="form-control" style="width: 60%;" value={{details.occupation}} ng-model="details.occupation"></input></p>
          <p style="color:black;">Salary:<input class="form-control" style="width: 60%;" value={{details.salary}} ng-model="details.salary"></input></p>
          <p style="color:black;">Education:<input class="form-control" style="width: 60%;" value={{details.education}} ng-model="details.education"></input></p>
          <p style="color:black;">Status:<input class="form-control" style="width: 60%;" value={{details.status}} ng-model="details.status"></input></p>
          <p style="color:black;">Policy:<input class="form-control" style="width: 60%;" value={{details.policy}} ng-model="details.policy"></input></p>
        </div>
	      <div class="modal-footer">
	      	<button type="button" class="btn btn-primary" data-dismiss="modal" ng-click="updateApp(details);">Save</button>
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div> <!-- /.modal-content -->
	  </div> <!-- /.modal-dialog -->
	</div> <!-- /.modal -->

      <div class="col-lg-12">
         <div class="panel panel-default">
            <div class="panel-heading">
                List of Pending Applications
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
              <table width="100%" class="table table-striped table-bordered table-hover" id="example">
                <thead>
                  <tr>
                    <th>Application Id</th>
                    <th>Date Applied</th>
                    <th>Document</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="gradeA" ng-repeat="application in applications | filter: {status: 'Working'}">
                  	<td>{{application.applicationId}}</td>
                  	<td>{{application.dateApplied  | secondsToDateTime | date:'medium'}}</td>
                  	<td><a href="http://localhost:8080/insurance-bank/webapi/photo?id={{application.applicationId}}"><img src="http://localhost:8080/insurance-bank/webapi/photo?id={{application.applicationId}}" height="50px"></a></td>
                  	<td>
                  		<button class="btn btn-primary" data-toggle="modal" data-target="#myModal2" ng-click="viewDetails(application);">
          					<i class="fa fa-info"></i> View details
          				</button>
          				<button class="btn btn-primary" ng-click="finalizeApp(application);">
          					<i class="fa fa-pencil-square-o"></i> Finalize
          				</button>
                  	</td>
                  </tr>
                </tbody>
              </table>              <!-- /.table-responsive -->
            </div>            <!-- /.panel-body -->
         </div>         <!-- /.panel -->
      </div>      <!-- /.col-lg-12 -->
	  </div>