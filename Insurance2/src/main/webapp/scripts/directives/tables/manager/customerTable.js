'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
.directive('customerTable',function() {
return {
    templateUrl:'scripts/directives/tables/manager/customerTable.jsp',
    restrict: 'E',
    replace: true,
	}
});