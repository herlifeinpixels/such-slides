'use strict'

angular.module('suchSlidesApp')
  .directive('slide', () ->
    template: '<div>{{content}}</div>'
    restrict: 'E'
    scope: yes
    transclude: yes
    link: (scope, element, attrs) ->
      scope.content = 10

      attrs.$observe 'content', (value) ->
        scope.content = value
  )
