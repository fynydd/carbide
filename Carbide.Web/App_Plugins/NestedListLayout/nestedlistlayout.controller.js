(function () {
    "use strict";

    function NestedListLayoutController($scope, listViewHelper, $location, contentResource, mediaResource, mediaHelper) {

        var vm = this;

        vm.selectItem = selectItem;
        vm.clickItem = clickItem;
        vm.expandChildren = expandChildren;

        $scope.items.forEach(child => {

            contentResource.getChildren(child.id)
                .then(function (contentArray) {

                    var children = contentArray;

                    child.expanded = false;

                    if (children.items !== null) {

                        child.hasChildren = true;

                    } else {

                        child.hasChildren = false;
                    }

                    child.children = children;

                    console.log(child);
                });
        });

        //console.log($scope.items);


        // Init the controller
        function activate() {
        }

        // Item select handler
        function selectItem(selectedItem, $event, index) {

            // use the list view helper to select the item
            listViewHelper.selectHandler(selectedItem, index, $scope.items, $scope.selection, $event);
            $event.stopPropagation();

            //console.log(selectedItem);
            //getChildNodes(selectedItem);
        }

        // Item click handler
        function clickItem(item) {

            // change path to edit item
            $location.path($scope.entityType + '/' + $scope.entityType + '/edit/' + item.id);
        }

        function expandChildren(item, $event) {

            $event.stopPropagation();

            item.expanded = (item.expanded == false);
        }

        activate();
    }

    angular.module("umbraco").controller("My.ListView.Layout.NestedListLayoutController", NestedListLayoutController);

})();