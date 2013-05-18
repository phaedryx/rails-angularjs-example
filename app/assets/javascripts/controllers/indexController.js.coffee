App.controller('indexController', ['$scope', 'User', ($scope,User) ->
  $scope.users = User.query()
])
