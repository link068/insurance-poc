'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:CustomerController
 * @description
 * # CustomerController
 * CustomerController of the sbAdminApp
 */
angular.module('sbAdminApp')
  .controller('CustomerController', function($scope,$position) {
	  init();
	  
	  function init(){
		  
			var remote=$http.get(BaseURI+"/application/email" + $rootScope.login.email);
			remote.then(function(serverResponse){
				$scope.customerApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
	  
  });
