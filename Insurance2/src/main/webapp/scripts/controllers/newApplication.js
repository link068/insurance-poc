'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:NewApplicationCtrl
 * @description
 * # NewApplicationCtrl
 * Controller of the new application
 */
angular.module('sbAdminApp')
  .controller('NewApplicationCtrl', function($scope,$http,$window,NewApplicationFactory) {
  	
  	// Populate saved data from customer login
  	$scope.email = sessionStorage.getItem('email');
  	$scope.name = sessionStorage.getItem('name');
  	
	  $scope.submitInfo = function(){ 
		  console.log("####!!!!!######$$$$$$$$$$$$$ =! ");
		  var regData = new NewApplicationFormNew($scope.name,$scope.email,$scope.mobile,$scope.address,$scope.ssn,$scope.dob,$scope.occupation,$scope.salary,$scope.education, $scope.policy);
		  console.log("data = " + regData);
		  console.log("name = "+regData.name);
		  
		  var remote = NewApplicationFactory.registerApplication(regData);
		   remote.then(function(serverResponse){
			   alert("success");
		   	   //alert(serverResponse.data.status);
			   $window.location.href = '/Insurance2/index.jsp';
			   //$location.path("/index");
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
  });
