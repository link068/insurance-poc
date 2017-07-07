'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:ThirdController
 * @description
 * # ThirdController
 * Controller of the sbAdminApp
 */
angular.module('sbAdminApp')
  .controller('ThirdController', function($scope,$http, BaseRestURI) {
	  init();
	  
	  function init(){
		  var remote=$http.get(BaseRestURI+"/application");
			remote.then(function(serverResponse){
				$scope.applications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
//			var remote=$http.get(BaseURI+"/application/email" + $rootScope.login.email);
//			remote.then(function(serverResponse){
//				$scope.employeeApplications=serverResponse.data;
//			},function(serverResponse){
//				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
//			});
	  }
	  
	  $scope.viewDetails = function(application)	{
			$scope.details = new NewApplicationForm(application.applicationId,application.name,application.email,application.mobile,application.address,application.ssn,application.dob,application.occupation,application.salary,application.education,application.status,application.policy);
		};
	  
  });
