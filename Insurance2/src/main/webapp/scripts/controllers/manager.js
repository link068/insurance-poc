'use strict';

angular.module('sbAdminApp').controller('Manager', function($scope, $http, BaseRestURI) {
	
		//Get saved data from sessionStorage
		var email = sessionStorage.getItem('email');
		var name = sessionStorage.getItem('name');
		$scope.currentUser = name;
		
	  init();
	  
	  function init(){
		   var remote=$http.get(BaseRestURI+"customer");
			remote.then(function(serverResponse){
				$scope.customers=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
			var remote=$http.get(BaseRestURI+"application");
			remote.then(function(serverResponse){
				$scope.applications=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
	  };
	  
	  $scope.viewDetails = function(application)	{
			$scope.details = new NewApplicationForm(application.applicationId,application.name,application.email,application.mobile,application.address,application.ssn,application.dob,application.occupation,application.salary,application.education,application.status,application.policy);
//			$('#myModal').modal('show');
		};
		
		$scope.sendThird = function($index, application) {
			var remote=$http.put(BaseRestURI+"application/status?id="+application.applicationId +"&status=Accepted");
			remote.then(function(serverResponse){
				init();
				alert("Successfully Sent");
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
		};
		
		$scope.decline = function($index, application) {
			var remote=$http.put(BaseRestURI+"application/status?id="+application.applicationId +"&status=Declined");
			remote.then(function(serverResponse){
				init();
				alert("Successfully Sent");
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
		};
  });
