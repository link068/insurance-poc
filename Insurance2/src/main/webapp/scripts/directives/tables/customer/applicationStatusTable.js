'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
.directive('applicationStatusTable',function() {
return {
    templateUrl:'scripts/directives/tables/customer/applicationStatusTable.jsp',
    restrict: 'E',
    replace: true,
	}
});