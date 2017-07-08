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
  	
  	// Get saved data from sessionStorage
  	var email = sessionStorage.getItem('email');
  	var name = sessionStorage.getItem('name');
  	$scope.currentUser = name;
  	console.log("third email: " + email);
  	
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
	  
	  $scope.sendEmail = function(applicationId,email) {
		  var data = {applicationId: applicationId,email: email};
		  $http.post(BaseRestURI + "/email",data).then(
				  function(serverResponse) {
					  
				  },
				  function(serverResponse) {
					  alert("problem occurred sending email");
				  }
		  );
		  var remote=$http.put(BaseRestURI+"application/status?id="+ applicationId +"&status=Working");
			remote.then(function(serverResponse){
				init();
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  };
	  
	  $scope.finalizeApp = function(application) {
		  var remote=$http.put(BaseRestURI+"application/status?id="+ application.applicationId +"&status=Finalized");
			remote.then(function(serverResponse){
				init();
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
	  
  });
