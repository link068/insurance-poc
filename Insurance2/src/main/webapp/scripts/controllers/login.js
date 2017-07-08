'use strict';
/**
 * @ngdoc function
 * @name sbAdminApp.controller:LoginCtrl
 * @description
 * # LoginCtrl
 * Controller of the sbAdminApp
 */
angular.module('sbAdminApp')
  .controller('LoginCtrl', function($scope,$http,BaseRestURI,$window) {

	  $scope.authUser=function()	{
			var data = new User($scope.email, $scope.password);
			console.log("data to pass: " + JSON.stringify(data));
			
	    var config = {
			  headers : {
			  	'Content-Type': 'application/json'
			  }
	    }
	    
	    $http.post(BaseRestURI+'login', data, config)
	    .success(function (data, status, headers, config) {
	    	console.log("data return: " + JSON.stringify(data));
	    	
	    	// Save data to sessionStorage
	    	sessionStorage.setItem('email', data.email);
	    	sessionStorage.setItem('name', data.name);
	    	
	    	if(data.role==='CUSTOMER')	{
	    		$window.location.href = '/Insurance2/customer';
	    	} else if(data.role==='MANAGER')	{
	    		$window.location.href = '/Insurance2/manager';
	    	} else if(data.role==='AGENT')	{
	    		$window.location.href = '/Insurance2/third';
	    	}	else if (data.role==='THIRDMNG')	{
	    		$window.location.href = '/Insurance2/thirdManager';
	    	}	else	{
	    		$scope.applicationMessage = "Invalid username and password"
	    	}
	    })
	    .error(function (data, status, header, config) {
        console.log("status:" + status + ' header:' + header);
        alert("Hey some problems occures in server side processing!!!!!!!!!!");
	    });
	    
		};
  });