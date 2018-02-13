<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="drinks.aspx.cs" Inherits="AngularWithWebApi.drinks" %>

<!DOCTYPE html>

<html ng-app="drinksApp">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title></title>


    <!--Jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-sanitize.js"></script>

    <!--Font Awesome-->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />

    <!--Kendo -->
    <script src="https://kendo.cdn.telerik.com/2017.2.621/js/kendo.all.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.2.621/styles/kendo.common.min.css" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.2.621/styles/kendo.flat.min.css" />


    <script>
        var app = angular.module("drinksApp", ["kendo.directives", "ngSanitize"]);
    </script>


</head>
<body>
    <form id="form1" runat="server">
        <h2></h2>
        <div class="container">
            <div ng-controller="drinksSection">

                <div class="row">
                    <div class="col-md-6">
                        <h3>Drinks List 1</h3>
                        <div class="list-group">
                            <div class="list-group-item" ng-repeat="d in drinks1">
                                <i class="fa fa-circle"></i>&nbsp;{{d.name}}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h3>Drinks List 2</h3>
                        <div class="list-group">
                            <div class="list-group-item" ng-repeat="d in drinks2">
                                <i class="fa fa-circle"></i>&nbsp;{{d.name}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            app.controller("drinksSection", function ($scope, $http) {


                $scope.getDrinks1 = function () {
                    $http.get("/api/v1/core/drinks").then(function (results) {
                        $scope.drinks1 = results.data;

                    });

                }
                $scope.getDrinks2 = function () {

                    $.ajax({ url: "/api/v1/core/drinks" }).done(function (results) {

                        $scope.drinks2 = results;
                        $scope.$apply();

                    });

                }

                $scope.getDrinks1();
                $scope.getDrinks2();

            });
        </script>
    </form>
</body>
</html>
