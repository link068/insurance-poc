'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:CustomerController
 * @description
 * # CustomerController
 * CustomerController of the sbAdminApp
 */
angular.module('sbAdminApp')
  .controller('CustomerController', function($scope,$http, BaseRestURI, NewApplicationFactory) {
  	
  	// Get saved data from sessionStorage
  	var email = sessionStorage.getItem('email');
  	var name = sessionStorage.getItem('name');
  	$scope.currentUser = name;
  	
	  init();
	  
	  function init(){
			var remote=$http.get(BaseRestURI+"application/email?email="+email);
			remote.then(function(serverResponse){
				$scope.customerApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
	  
	  $scope.viewDetails = function(application)	{
			$scope.details = new NewApplicationForm(application.applicationId,application.name,application.email,application.mobile,application.address,application.ssn,application.dob,application.occupation,application.salary,application.education,application.status,application.policy);

		};
		$scope.submitInfo = function(){ 
			  console.log("####!!!!!######$$$$$$$$$$$$$ =! ");
			  var regData = new NewApplicationFormNew($scope.name,$scope.email,$scope.mobile,$scope.address,$scope.ssn,$scope.dob,$scope.occupation,$scope.salary,$scope.education, $scope.policy);
			  console.log("data = " + regData);
			  console.log("name = "+regData.name);
			  
			  var remote = NewApplicationFactory.registerApplication(regData);
			   remote.then(function(serverResponse){
				   alert("success");
				   $('#myModal7').modal('hide');
				},function(serverResponse){
					alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
				});
		  };
	  
  });
