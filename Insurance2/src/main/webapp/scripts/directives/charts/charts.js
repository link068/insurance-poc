angular.module('sbAdminApp')
.directive('charts',function() {
return {
    templateUrl:'scripts/directives/charts/charts.jsp',
    restrict: 'E',
    replace: true,
    controller: 'ChartsController'
	}
});