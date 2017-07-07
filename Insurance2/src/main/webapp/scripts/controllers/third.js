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
	  
	  $scope.sendEmail = function(applicationId,email) {
		  var data = {applicationId: applicationId,email: email};
		  $http.post(BaseRestURI + "/email",data).then(
				  function(serverResponse) {
					  
				  },
				  function(serverResponse) {
					  alert("problem occurred sending email");
				  }
		  );
	  }
	  
  });
