'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:RegistrationController
 * @description
 * # RegistrationController
 * Controller for the registration page
 */
angular.module('sbAdminApp')
  .controller('RegistrationController', function($scope,$http,$window, BaseRestURI) {
	  $scope.submitInfo = function(){ 
		  var user = new NewUser($scope.email, $scope.password, $scope.name);
		  var config = {
		           headers : {
		               'Content-Type': 'application/json;'
		           }
		       };
		  var remote=$http.post(BaseRestURI+"user",user,config);
			remote.then(function(serverResponse){
				alert("successfully registered");
				$window.location.href = '/Insurance2/index.jsp';
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  };
  });