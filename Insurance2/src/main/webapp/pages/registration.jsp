<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title>Registration Page</title>
	
	<%@include file="../imports/imports.jsp" %>
	<script src="scripts/model/NewUser.js"></script>
	<script src="scripts/controllers/registration.js"></script>
	  
</head>

<body>
	<div id="wrapper" ng-app="sbAdminApp" ng-controller="RegistrationController">
		
		<header></header>
		
		<div class="container-register">
      <div class="row">
        <div class="col-md-4 col-md-offset-4">
          <div class="login-panel panel panel-default">
            <div class="panel-heading">
            	<h3 class="panel-title">Create login account</h3>
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
                  <label>Password</label>
                  <span style="color:red" ng-show="myForm.password.$dirty && myForm.password.$invalid">
									<span ng-show="myForm.password.$error.required">Password is Required.</span></span>
									<input class="form-control" placeholder="Password" name="password" type="password" ng-model="password" required>
                </div> <!-- ./form-group -->
                
                <input type="submit" class="btn btn-lg btn-success btn-block" value="Create your account" ng-click="submitInfo()" ng-disabled="myForm.email.$dirty && myForm.email.$invalid 
                || myForm.name.$dirty && myForm.name.$invalid || myForm.password.$dirty && myForm.password.$invalid" /> 
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