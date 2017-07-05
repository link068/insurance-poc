'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:ThirdController
 * @description
 * # ThirdController
 * Controller of the sbAdminApp
 */
angular.module('sbAdminApp')
  .controller('ThirdController', function($scope,$http,$rootScope,BaseURI) {
	  init();
	  alert("hello");
	  
	  function init(){
		  var remote=$http.get(BaseURI+"/application/status/new");
			remote.then(function(serverResponse){
				$scope.newApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseURI+"/application/email" + $rootScope.login.email);
			remote.then(function(serverResponse){
				$scope.employeeApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
	  
  });
