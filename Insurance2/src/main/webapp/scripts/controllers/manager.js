'use strict';

angular.module('sbAdminApp').controller('Manager', function($scope, $http, BaseRestURI) {
	  init();
	  
	  
	  function init(){
		   var remote=$http.get(BaseRestURI+"customer/carlosp@gmail.com");
			remote.then(function(serverResponse){
				alert(serverResponse.data);
				alert(JSON.stringify(serverResponse.data));
//				$scope.customers=JSON.stringify(serverResponse.data);
				$scope.customers=serverResponse.data;
			},function(serverResponse){
				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			});
//			var remote=$http.get(BaseRestURI+"/application/status/finalized");
//			remote.then(function(serverResponse){
//				$scope.applications=serverResponse.data;
//			},function(serverResponse){
//				alert("Hey some problems occures in server side processing!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
//			});
	  };
  });
