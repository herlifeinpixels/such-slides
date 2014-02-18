'use strict'

angular.module('suchSlidesApp', [
  'ngRoute'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/home',
        templateUrl: 'views/home.html'
        controller: 'HomeCtrl'
      .otherwise
        redirectTo: '/'
