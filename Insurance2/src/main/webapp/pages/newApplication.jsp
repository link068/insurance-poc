<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title>NewApplication</title>
	
	<%@include file="../imports/imports.jsp" %>
	<script src="scripts/controllers/newApplication.js"></script>
  <script src="scripts/model/NewApplicationForm.js"></script>
	<script src="scripts/factory/NewApplicationFactory.js"></script>
</head>

<body>
	<div id="wrapper" ng-app="sbAdminApp" ng-controller="NewApplicationCtrl">
		
		<header></header>
		
		<div class="container-register">
      <div class="row">
        <div class="col-md-4 col-md-offset-4">
          <div class="login-panel panel panel-default">
            <div class="panel-heading">
            	<h3 class="panel-title">Create new application</h3>
            </div> <!-- ./panel-heading -->
            <div class="panel-body">
              <form role="form" novalidate name="myForm">
		          	<fieldset>
		           	<div class="form-group">
		            	<label>Name</label>
		            	<span style="color:red" ng-show="myForm.name.$dirty && myForm.name.$invalid">
									<span ng-show="myForm.name.$error.required">Name is Required.</span></span>
									<span ng-model-options="{ debounce: 250 }" style="color:red" ng-show="myForm.name.$error.minlength">Name must be at least 2 characters long</span>
									<input class="form-control" placeholder="Name" name="name" type="text" ng-model="name" autofocus required ng-minlength="2">
                  <label>E-Mail</label>
                  <span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
									<span ng-show="myForm.email.$error.required">Email is Required.</span></span>
									<span ng-model-options="{ debounce: 250 }" style="color:red" ng-show="myForm.email.$error.minlength">Email must be at least 6 characters long</span>
	                <input class="form-control" placeholder="E-mail" name="email" type="email" ng-model="email" required ng-minlength="6">
	                <label>Mobile Number</label>
	                <span style="color:red" ng-show="myForm.mobile.$dirty && myForm.mobile.$invalid">
									<span ng-show="myForm.mobile.$error.required">Mobile Number is Required.</span></span>
                  <input class="form-control" placeholder="Mobile" name="mobile" type="tel" ng-model="mobile" required>
                  <label>Address</label>
                  <span style="color:red" ng-show="myForm.address.$dirty && myForm.address.$invalid">
									<span ng-show="myForm.address.$error.required">Address is Required.</span></span>	
                  <input class="form-control" placeholder="Address" name="address" type="text" value="" ng-model="address" required>
                  <label>Social Security Number</label>
                 	<span style="color:red" ng-show="myForm.ssb.$dirty && myForm.ssn.$invalid">
									<span ng-show="myForm.ssn.$error.required">Social Security Number is Required.</span></span>
                  <input class="form-control" placeholder="SSN" name="ssn" type="text" ng-model="ssn" required>
                  <label>Date of Birth</label>
                  <span style="color:red" ng-show="myForm.dob.$dirty && myForm.dob.$invalid">
									<span ng-show="myForm.dob.$error.required">Date of Birth is Required.</span></span>
                  <input class="form-control" placeholder="DOB" name="dob" type="date" ng-model="dob" required>
                  <label>Occupation</label>
                  <span style="color:red" ng-show="myForm.occupation.$dirty && myForm.occupation.$invalid">
									<span ng-show="myForm.occupation.$error.required">Occupation is Required.</span></span>
                  <input class="form-control" placeholder="Occupation" name="occupation" type="text" ng-model="occupation" required>
                  <label>Salary</label>
                  <span style="color:red" ng-show="myForm.salary.$dirty && myForm.salary.$invalid">
									<span ng-show="myForm.salary.$error.required">Salary is Required.</span></span>
									<input class="form-control" placeholder="Salary" name="salary" type="text" ng-model="salary" required>
                  <label>Education</label>
                  <span style="color:red" ng-show="myForm.education.$dirty && myForm.education.$invalid">
									<span ng-show="myForm.education.$error.required">Education is Required.</span></span>
									<input class="form-control" placeholder="Education" name="education" type="text" ng-model="education" required>
				  <label>Policy</label>
                  <span style="color:red" ng-show="myForm.policy.$dirty && myForm.policy.$invalid">
									<span ng-show="myForm.policy.$error.required">Policy is Required.</span></span>
				  <select ng-model="policy" name="policy" required>
						<option value="Home">Home</option>
						<option value="Boat">Boat</option>
						<option value="Car">Car</option>
						<option value="Life">Life</option>
						<option value="Health">Health</option>
				  </select>
                </div> <!-- ./form-group -->
                
                <input type="submit" class="btn btn-lg btn-success btn-block" value="Submit" ng-click="submitInfo()" ng-disabled="myForm.email.$dirty && myForm.email.$invalid 
                || myForm.name.$dirty && myForm.name.$invalid || myForm.ssn.$dirty && myForm.ssn.$invalid || myForm.salary.$dirty && myForm.salary.$invalid
                || myForm.address.$dirty && myForm.address.$invalid || myForm.dob.$dirty && myForm.dob.$invalid || myForm.occupation.$dirty && myForm.occupation.$invalid
                || myForm.education.$dirty && myForm.education.$invalid ||  myForm.mobile.$dirty && myForm.mobile.$invalid || myForm.policy.$dirty && myForm.policy.$invalid"> 
                </fieldset>
              </form>
            </div> <!-- ./panel-body -->
          </div> <!-- panel -->
        </div> <!-- ./col-md-4 -->
      </div> <!-- ./row -->
  	</div> <!-- ./container-register -->
  </div> <!-- ./ng-app -->
  
</body>
</html>