(function () {
    "use strict";

    function NestedListLayoutController($scope, listViewHelper, $location, contentResource, mediaResource, mediaHelper) {

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
            getChildNodes(selectedItem);
        }

        // Item click handler
        function clickItem(item) {

            // change path to edit item
            $location.path($scope.entityType + '/' + $scope.entityType + '/edit/' + item.id);
        }

        async function getChildNodes(item) {

            var kids = await test(item);

            console.log(kids);

            //return ["kid 1", "kid 2"];
        }

        async function test(item) {

            let kids = [];

            contentResource.getChildren(item.id)
                .then(function (contentArray) {
                    var children = contentArray;
                    if (children.items !== null) {
                        children.items.forEach(child => {
                            kids.push(child);
                        });
                    }
                });

            return await kids;
        }

        activate();
    }

    angular.module("umbraco").controller("My.ListView.Layout.NestedListLayoutController", NestedListLayoutController);

})();