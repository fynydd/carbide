(function () {
    "use strict";

    function NestedListLayoutController($scope, listViewHelper, $location, contentResource, editorService, navigationService, mediaResource, mediaHelper) {

        var vm = this;

        vm.selectItem = selectItem;
        vm.clickItem = clickItem;
        vm.clickSubitem = clickSubitem;
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

                    if (child.children.items != null) {

                        child.children.items.forEach(_child => {

                            contentResource.getChildren(_child.id)
                                .then(function (contentArray) {

                                    var grandchildren = contentArray;

                                    _child.expanded = false;

                                    if (grandchildren.items !== null) {

                                        _child.hasChildren = true;

                                    } else {

                                        _child.hasChildren = false;
                                    }

                                    _child.children = grandchildren;
                                });
                        });

                        //console.log(child);

                    } else {

                        //console.log(child);
                    }
                });
        });

        // Init the controller
        function activate() {
        }

        // Item select handler
        function selectItem(selectedItem, $event, index) {

            // use the list view helper to select the item
            listViewHelper.selectHandler(selectedItem, index, $scope.items, $scope.selection, $event);
            $event.stopPropagation();
        }

        // Item click handler
        function clickItem(item) {

            // change path to edit item
            $location.path($scope.entityType + '/' + $scope.entityType + '/edit/' + item.id);
        }

        // Subitem click handler
        function clickSubitem(item) {

            editorService.contentEditor({ id: item.id, create: false, submit: function () { editorService.close(); }, close: function () { editorService.close(); } });
        }

        function expandChildren(item, $event) {

            $event.stopPropagation();

            item.expanded = (item.expanded == false);
        }

        activate();
    }

    angular.module("umbraco").controller("My.ListView.Layout.NestedListLayoutController", NestedListLayoutController);

})();