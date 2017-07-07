'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
.directive('workingApplicationsTable',function() {
return {
    templateUrl:'scripts/directives/tables/manager/workingApplicationsTable.jsp',
    restrict: 'E',
    replace: true,
	}
});