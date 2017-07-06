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
	  init();

	  
	  function init(){
		  var remote=$http.get(BaseRestURI+"application/status?status=pending");
			remote.then(function(serverResponse){
				$scope.assignedApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseRestURI+"login/thirdParty");
			remote.then(function(serverResponse){
				$scope.employees=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseRestURI+"application/status?status=new");
			remote.then(function(serverResponse){
				$scope.newApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
	  
  });
