<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		
		<title>Login Page</title>
		
		<%@include file="../imports/imports.jsp" %>
		<script type="text/javascript" src="scripts/controllers/login.js"></script>
		<script src="scripts/model/User.js"></script>
</head>

<body>
	<div id="wrapper" ng-app="sbAdminApp" ng-controller="LoginCtrl">
		
		<header></header>

		<div class="container">
	    <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <div class="login-panel panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Please Sign In</h3>
            </div>
            <div class="panel-body">
              <form role="form" novalidate name="myForm">
                <fieldset>
                  <div class="form-group">
                    <span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid"></span>
										<span style="color:red" ng-show="myForm.email.$error.email">Invalid email</span>
										<span style="color:red" ng-show="myForm.email.$error.required">Email is Required</span>
										<span style="color:red" ng-model-options="{ debounce: 250 }" style="color:red" ng-show="myForm.email.$error.minlength">Email must be at least 6 characters long</span>
                    <input class="form-control" placeholder="E-mail" name="email" type="email" ng-model="email" autofocus required ng-minlength="6">
                  </div>
                  <div class="form-group">
                 		<span style="color:red" ng-show="myForm.password.$dirty && myForm.password.$invalid">
										<span style="color:red" ng-show="myForm.password.$error.required">Password is Required</span></span>
										<span style="color:red" ng-model-options="{ debounce: 250 }" style="color:red" ng-show="myForm.password.$error.minlength">Password must be at least 3 characters long</span>
                    <input class="form-control" placeholder="Password" name="password" type="password" ng-model="password" required ng-minlength="3">
                  </div>
                  <div class="checkbox">
                    <label>
                      <input name="remember" type="checkbox" value="Remember Me?">Remember Me
                    </label>
                    <ul class="formLinks">
											<li><a href="">Forgot your password</a>?</li>
											<li><a href="registration">Create your account</a></li>
										</ul>
                  </div>
                  <!-- Change this to a button or input when using this as a form -->
                  <button type="submit" class="btn btn-lg btn-success btn-block" ng-click="authUser();" ng-disabled="myForm.email.$dirty && myForm.email.$invalid 
                	|| myForm.password.$dirty && myForm.password.$invalid || myForm.email.$error.required || myForm.password.$error.required">Login</button>
                  <span style="color: red;font-size: 14px;">{{applicationMessage}}</span>
                </fieldset>
              </form>
            </div>
          </div>
        </div>
	    </div>
		</div>
	</div> <!-- ./ ng-app -->
	
</body>
</html>