'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:assignApplicationTable
 * @description
 * # assignApplicationTable
 */
angular.module('sbAdminApp')
.directive('assignApplicationTable',function() {
return {
    templateUrl:'scripts/directives/tables/thirdManager/assignApplicationTable.jsp',
    restrict: 'E',
    replace: true,
	}
});