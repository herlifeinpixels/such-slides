'use strict'

describe 'Directive: slide', () ->

  # load the directive's module
  beforeEach module 'suchSlidesApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<slide></slide>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the slide directive'
