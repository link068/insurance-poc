<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		
		<title>Login Page</title>
		
		<%@include file="../imports/imports.jsp" %>
		<script type="text/javascript" src="scripts/controllers/login.js"></script>
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
              <form role="form" action="login" method="post">
                <fieldset>
                  <div class="form-group">
                      <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
                  </div>
                  <div class="form-group">
                      <input class="form-control" placeholder="Password" name="password" type="password" value="">
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
                  <button type="submit" class="btn btn-lg btn-success btn-block">Login for real</button>
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