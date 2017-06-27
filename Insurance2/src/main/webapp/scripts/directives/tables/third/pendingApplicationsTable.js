'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
.directive('pendingApplicationsTable',function() {
return {
    templateUrl:'scripts/directives/tables/third/pendingApplicationsTable.jsp',
    restrict: 'E',
    replace: true,
	}
});