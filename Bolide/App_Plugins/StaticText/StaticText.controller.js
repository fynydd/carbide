﻿angular.module("umbraco")
    .controller("Bolide.StaticTextController",
        function ($scope) {
            $scope.model.hideLabel = ($scope.model.config.fullWidth === 1 || $scope.model.config.fullWidth === '1' ? true : false);
        });
