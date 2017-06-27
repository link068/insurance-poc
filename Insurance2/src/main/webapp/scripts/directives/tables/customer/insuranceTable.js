'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
.directive('insuranceTable',function() {
return {
    templateUrl:'scripts/directives/tables/customer/insuranceTable.jsp',
    restrict: 'E',
    replace: true,
	}
});