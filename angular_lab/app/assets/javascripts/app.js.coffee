# define application
MyApp = angular.module "MyApp", []

# create controller
MyApp.controller "IndexCtrl", ['$scope', ($scope) ->

  $scope.movies = [{
    title: "Guardians of the Galaxy ",
    rating: 8.6
  },
  {
    title: "Teenage Mutant Ninja Turtles",
    rating: 6.4
  },
  {
    title: "Sin City: A Dame to Kill For",
    rating: 7.1
  },
  {
    title: "If I Stay",
    rating: 7.1
  },
  {
    title: "Divergent",
    rating: 7.0
  },
  {
    title: "The Fault in Our Stars",
    rating: 8.2
  },
  {
    title: "As Above, So Below",
    rating: 6.2
  },
  {
    title: "The Expendables 3",
    rating: 6.3
  },
  {
    title: "Lucy",
    rating: 6.6
  },
  {
    title: "The Giver",
    rating: 7.1
  }]

  $scope.removeFavorite = (movie) ->
    $scope.movies.splice($scope.movies.indexOf(movie), 1)

  $scope.checked = true

  $scope.submit = ->
    $scope.text = '';

  $scope.$watch "typing", ->
    console.log $scope.typing
    if $scope.typing == "secret" && $scope.count <= 20
      $scope.notice = "You guessed the password!"
      $scope.removed = true
    else if $scope.count > 20
      $scope.notice = "You're out of guesses! The password is secret."
      $scope.removed = true

]

MyApp.filter 'reverseTitle', ->
  (title) ->
    title.split("").reverse().join("")