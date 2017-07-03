'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:ManagerController
 * @description
 * # ManagerController
 * ManagerController of the sbAdminApp
 */
angular.module('sbAdminApp')
  .controller('ManagerController', function($scope,$position) {
	  init();
	  
	  function init(){
		   var remote=$http.get(BaseURI+"/customer");
			remote.then(function(serverResponse){
				$scope.customers=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseURI+"/application/status/finalized");
			remote.then(function(serverResponse){
				$scope.applications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
  });
