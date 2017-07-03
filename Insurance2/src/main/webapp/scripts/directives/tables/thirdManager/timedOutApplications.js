'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:timedOutApplications
 * @description
 * # timedOutApplications
 */
angular.module('sbAdminApp')
.directive('timedOutApplications',function() {
return {
    templateUrl:'scripts/directives/tables/thirdManager/timedOutApplications.jsp',
    restrict: 'E',
    replace: true,
	}
});