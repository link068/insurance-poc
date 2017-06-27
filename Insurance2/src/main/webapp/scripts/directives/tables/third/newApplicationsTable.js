'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
.directive('newApplicationsTable',function() {
return {
    templateUrl:'scripts/directives/tables/third/newApplicationsTable.jsp',
    restrict: 'E',
    replace: true,
	}
});