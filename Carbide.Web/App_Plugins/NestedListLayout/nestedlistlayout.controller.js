(function () {
    "use strict";

    function NestedListLayoutController($scope, listViewHelper, $location, mediaResource, mediaHelper) {

        var vm = this;

        vm.selectItem = selectItem;
        vm.clickItem = clickItem;

        // Init the controller
        function activate() {
        }

        // Item select handler
        function selectItem(selectedItem, $event, index) {

            // use the list view helper to select the item
            listViewHelper.selectHandler(selectedItem, index, $scope.items, $scope.selection, $event);
            $event.stopPropagation();

            console.log(selectedItem);
        }

        // Item click handler
        function clickItem(item) {

            // change path to edit item
            $location.path($scope.entityType + '/' + $scope.entityType + '/edit/' + item.id);

        }

        activate();
    }

    angular.module("umbraco").controller("My.ListView.Layout.NestedListLayoutController", NestedListLayoutController);

})();