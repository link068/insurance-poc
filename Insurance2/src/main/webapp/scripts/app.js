'use strict';
/**
 * @ngdoc overview
 * @name sbAdminApp
 * @description
 * # sbAdminApp
 *
 * Main module of the application.
 */
angular
  .module('sbAdminApp', [
    'oc.lazyLoad',
    'ui.router',
    'ui.bootstrap',
    'angular-loading-bar',
  ])
  .config(['$stateProvider','$urlRouterProvider','$ocLazyLoadProvider',function ($stateProvider,$urlRouterProvider,$ocLazyLoadProvider) {
    
    $ocLazyLoadProvider.config({
      debug:false,
      events:true,
    });

    $urlRouterProvider.otherwise('/dashboard/home');

    $stateProvider
      .state('dashboard', {
        url:'/dashboard',
        templateUrl: 'pages/main.jsp',
        resolve: {
            loadMyDirectives:function($ocLazyLoad){
                return $ocLazyLoad.load(
                {
                    name:'sbAdminApp',
                    files:[
                    'scripts/directives/header/header.js',
                    'scripts/directives/header/header-notification/header-notification.js'
                    ]
                }),
                $ocLazyLoad.load(
                {
                   name:'toggle-switch',
                   files:["bower_components/angular-toggle-switch/angular-toggle-switch.min.js",
                          "bower_components/angular-toggle-switch/angular-toggle-switch.css"
                      ]
                }),
                $ocLazyLoad.load(
                {
                  name:'ngAnimate',
                  files:['bower_components/angular-animate/angular-animate.js']
                })
                $ocLazyLoad.load(
                {
                  name:'ngCookies',
                  files:['bower_components/angular-cookies/angular-cookies.js']
                })
                $ocLazyLoad.load(
                {
                  name:'ngResource',
                  files:['bower_components/angular-resource/angular-resource.js']
                })
                $ocLazyLoad.load(
                {
                  name:'ngSanitize',
                  files:['bower_components/angular-sanitize/angular-sanitize.js']
                })
                $ocLazyLoad.load(
                {
                  name:'ngTouch',
                  files:['bower_components/angular-touch/angular-touch.js']
                })
            }
        }
    })
    .state('dashboard.home',{
      url:'/home',
      controller: 'MainCtrl',
      templateUrl:'pages/home.jsp',
      resolve: {
        loadMyFiles:function($ocLazyLoad) {
          return $ocLazyLoad.load({
            name:'sbAdminApp',
            files:[
            'scripts/controllers/main.js',
            'scripts/directives/notifications/notifications.js',
            'scripts/directives/dashboard/stats/stats.js'
            ]
          })
        }
      }
    })
    .state('dashboard.login',{
      templateUrl:'pages/login.jsp',
      url:'/login'
    })
    .state('dashboard.register',{
        templateUrl:'pages/registration.jsp',
        url:'/register',
        controller: 'RegistrationCtrl',
        resolve: {
            loadMyFiles:function($ocLazyLoad) {
              return $ocLazyLoad.load({
                name:'sbAdminApp',
                files:[
                'scripts/controllers/registration.js',
                'scripts/directives/validations/confirmPass.js'
                ]
              })
            }
        }
    })
    .state('dashboard.customer',{
        templateUrl:'pages/customer.jsp',
        url:'/customer'
    })
    .state('dashboard.manager',{
        templateUrl:'pages/manager.jsp',
        url:'/manager'
    })
    .state('dashboard.third',{
        templateUrl:'pages/third.jsp',
        url:'/third'
    })
      
  }]);

    
