'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:ThirdManagerController
 * @description
 * # ThirdManagerController
 * Controller of the sbAdminApp
 */
angular.module('sbAdminApp')
  .controller('ThirdManagerController', function($scope,$http, BaseRestURI) {
  	// Get saved data from sessionStorage
  	var email = sessionStorage.getItem('email');
  	var name = sessionStorage.getItem('name');
  	$scope.currentUser = name;
  	
	  init();
	  $scope.assignAppDetails = null;
	  $scope.currentIndex = null;
	  
	  function init(){
		  var remote=$http.get(BaseRestURI+"application/status?status=Pending");
			remote.then(function(serverResponse){
				$scope.assignedApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseRestURI+"user/thirdParty");
			remote.then(function(serverResponse){
				$scope.employees=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseRestURI+"application/status?status=Accepted");
			remote.then(function(serverResponse){
				$scope.newApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseRestURI+"application");
			remote.then(function(serverResponse){
				$scope.applications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
	  
	  $scope.viewDetails = function(application)	{
			$scope.details = new NewApplicationForm(application.applicationId,application.name,application.email,application.mobile,application.address,application.ssn,application.dob,application.occupation,application.salary,application.education,application.status,application.policy);
//			$('#myModal').modal('show');
		};
		
		$scope.assignApp = function($index, application) {
			$scope.assignAppDetails = new NewApplicationForm(application.applicationId,application.name,application.email,application.mobile,application.address,application.ssn,application.dob,application.occupation,application.salary,application.education,application.status,application.policy);
			$scope.currentIndex = $index;
		};
		
		$scope.assignNow = function() {
			var remote=$http.put(BaseRestURI+"application/assignEmployee?id=" + $scope.assignAppDetails.applicationId + "&email=" + $scope.selected);
			remote.then(function(serverResponse){
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			
			var remote=$http.put(BaseRestURI+"application/status?id="+ $scope.assignAppDetails.applicationId +"&status=Pending");
			remote.then(function(serverResponse){
				init();
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			
		};
	  
  });
