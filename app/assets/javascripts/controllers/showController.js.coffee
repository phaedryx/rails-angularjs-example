App.controller('showController', [
  '$scope', '$routeParams', 'User',
  ($scope, $routeParams, User) ->
    success = (user) ->
      $scope.user = user
    failure = (error) ->
      $scope.user = {first_name: 'unknown', last_name: 'user'}
      console.log error
    User.get({id: $routeParams.id}, success, failure)
])
