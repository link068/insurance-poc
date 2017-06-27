'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
.directive('applicationTable',function() {
return {
    templateUrl:'scripts/directives/tables/manager/applicationTable.jsp',
    restrict: 'E',
    replace: true,
	}
});