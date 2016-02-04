(function() {
  var app = angular.module('ghca.services', ['ngResource']);
  app.factory('User', ['$resource', function($resource) {
    return $resource('/user/:username');
  }]);
  app.factory('Event', ['$resource', function($resource) {
    return $resource('/user/:username/events/:page');
  }]);
  app.factory('Statistics', ['$resource', function($resource) {
    return $resource('/stats');
  }]);
})();
