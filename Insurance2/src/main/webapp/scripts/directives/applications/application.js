'use strict';
/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
.directive('application',function() {
return {
    templateUrl:'scripts/directives/applications/application.jsp',
    restrict: 'E',
    replace: true,
	}
});