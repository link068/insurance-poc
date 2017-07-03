angular.module('sbAdminApp')
.factory("NewApplicationFactory",function($http,$q,$rootScope,BaseRestURI){
	 var registerApplicationURI=BaseRestURI+'createApplication';
	 var registerURI=BaseRestURI+'upload';
	 var postFrog="http://localhost:8900/upload";
	 var registerFactory={}; // here we are creating blank in java script
	 var config = {
	           headers : {
	        	   'Content-Type': 'application/json;'
	           }
	       }
	 //this method you have to call explicitly 
	 registerFactory.registerApplication=function(data){
		 	var deferred = $q.defer();
			$http.post(registerApplicationURI, data, config).success(function(pdata) {
				deferred.resolve(pdata);
			}).error(function(msg, code) {
				deferred.reject(msg);
			});
			return deferred.promise;
	 };
	 
	 registerFactory.iamgeRegister=function(data){
		 	var deferred = $q.defer();
		 	console.log("!!@!!!!!fd!!!!!"+data);
			$http.post(registerURI, data,{
				withCredentials : false,
				headers : {
					'Content-Type' : undefined
				},
				transformRequest : angular.identity
				}).success(function(pdata) {
				deferred.resolve(pdata);
			}).error(function(msg, code) {
				deferred.reject(msg);
			});
			return deferred.promise;
	 };
	 
	 return registerFactory;
});