'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:ThirdCtrl
 * @description
 * # ThirdCtrl
 * Controller of the sbAdminApp
 */
angular.module('sbAdminApp')
  .controller('ThirdManagerController', function($scope,$position, BaseURI) {
	  init();
	  
	  function init(){
		  var remote=$http.get(BaseURI+"/application/status/pending");
			remote.then(function(serverResponse){
				$scope.timedApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseURI+"/login");
			remote.then(function(serverResponse){
				$scope.loginEntities=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseURI+"/application/status/new");
			remote.then(function(serverResponse){
				$scope.newApplications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  }
	  
  });
