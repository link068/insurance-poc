angular.module('sbAdminApp')
.factory("RegisterFactory",function($http,$q,$rootScope,BaseRestURI){
	 var registerUserURI=BaseRestURI+'createCustomer';
	 var registerURI=BaseRestURI+'upload';
	 var postFrog="http://localhost:8900/upload";
	 var registerFactory={}; // here we are creating blank in java script
	 var config = {
	           headers : {
	        	   'Content-Type': 'application/json;'
	           }
	       }
	 //this method you have to call explicitly 
	 registerFactory.registerUser=function(data){
		 	var deferred = $q.defer();
			$http.post(registerUserURI, data, config).success(function(pdata) {
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