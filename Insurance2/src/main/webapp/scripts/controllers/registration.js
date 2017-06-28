'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the sbAdminApp
 */

angular.module('sbAdminApp')
  .controller('RegistrationController', function($scope,$position,RegisterFactory) {
	  $scope.submitInfo = function(){
		  console.log("####!!!!!######$$$$$$$$$$$$$ =! ");
		  var regData = new CustomerRegisterFrom($scope.name,$scope.email,$scope.password,$scope.mobile,$scope.address,$scope.ssn,$scope.dob,$scope.occupation,$scope.salary,$scope.education);
		  console.log("data = " + regData);
		  console.log("name = "+regData.name);
		  console.log("password = "+regData.password);
		  
		  var remote = RegisterFactory.registerUser(regData);
		   remote.then(function(serverResponse){
			   alert("succss");
		   	   alert(serverResponse.data.status);
			   
			   //$location.path("/register-succss");
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
  });