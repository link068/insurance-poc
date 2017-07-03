'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:employeeTable
 * @description
 * # employeeTable
 */
angular.module('sbAdminApp')
.directive('employeeTable',function() {
return {
    templateUrl:'scripts/directives/tables/thirdManager/employeeTable.jsp',
    restrict: 'E',
    replace: true,
	}
});