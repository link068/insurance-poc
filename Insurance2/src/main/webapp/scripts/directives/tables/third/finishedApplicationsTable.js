'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
.directive('finishedApplicationsTable',function() {
return {
    templateUrl:'scripts/directives/tables/third/finishedApplicationsTable.jsp',
    restrict: 'E',
    replace: true,
	}
});