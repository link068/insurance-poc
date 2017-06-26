'use strict';

/**
 * @ngdoc directive
 * @name izzyposWebApp.directive:adminPosHeader
 * @description
 * # adminPosHeader
 */
angular.module('sbAdminApp')
    .directive('confirmPass',function() {
    	return {
  		restrict:'A',
  		require: '?ngModel',
  		link: function (scope, elm, attrs, ctl) {
  	      scope.$watch(attrs['confirmPass'], function (errorMsg) {
  	        elm[0].setCustomValidity(errorMsg);
  	        ctl.$setValidity('confirmPass', errorMsg ? false : true);
  	      });
  		}	
    };
});