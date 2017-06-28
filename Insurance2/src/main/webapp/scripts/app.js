'use strict';
/**
 * @ngdoc overview
 * @name sbAdminApp
 * @description
 * # sbAdminApp
 *
 * Main module of the application. fixing changes
 */
var app=angular
  .module('sbAdminApp', [
    'oc.lazyLoad',
    'ui.bootstrap',
    'angular-loading-bar',
  ]);
app.constant("BaseRestURI", "http://localhost:8081/insurance-bank/api/");
  


    
