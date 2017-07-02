'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:RegistrationController
 * @description
 * # RegistrationController
 * Controller for the registration page
 */
angular.module('sbAdminApp')
  .controller('RegistrationController', function($scope,$position,$window,RegisterFactory) {
	  $scope.submitInfo = function(){ 
		  console.log("####!!!!!######$$$$$$$$$$$$$ =! ");
		  var regData = new CustomerApplicationFrom($scope.name,$scope.email,$scope.mobile,$scope.address,$scope.ssn,$scope.dob,$scope.occupation,$scope.salary,$scope.education);
		  console.log("data = " + regData);
		  console.log("name = "+regData.name);
		  
		  var remote = RegisterFactory.registerApplication(regData);
		   remote.then(function(serverResponse){
			   alert("succss");
		   	   //alert(serverResponse.data.status);
			   $window.location.href = '/Insurance2/index.jsp';
			   //$location.path("/index");
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
  });