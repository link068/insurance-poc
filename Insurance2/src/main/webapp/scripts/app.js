'use strict';
/**
 * @ngdoc overview
 * @name sbAdminApp
 * @description
 * # sbAdminApp
 *
 * Main module of the application. fixing changes
 */
angular
  .module('sbAdminApp', []);
angular.module('sbAdminApp').constant("BaseRestURI", "http://localhost:8080/insurance-bank/webapi/");

angular.module('sbAdminApp').filter('secondsToDateTime', [function() {
    return function(seconds) {
        return new Date().setSeconds(seconds);
    };
}])

    
