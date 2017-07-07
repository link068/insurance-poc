'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:CustomerController
 * @description
 * # CustomerController
 * CustomerController of the sbAdminApp
 */
angular.module('sbAdminApp')
  .controller('CustomerController', function($scope,$http, BaseRestURI) {
	  init();
	  
	  function init(){
		  
			var remote=$http.get(BaseRestURI+"application/email?email=carlosp@gmail.com");
			remote.then(function(serverResponse){
				$scope.customerApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
	  
	  $scope.viewDetails = function(application)	{
			$scope.details = new NewApplicationForm(application.applicationId,application.name,application.email,application.mobile,application.address,application.ssn,application.dob,application.occupation,application.salary,application.education,application.status,application.policy);
//			$('#myModal').modal('show');
		};
	  
  });
