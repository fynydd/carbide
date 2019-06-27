angular.module("umbraco")
    .controller("Bolide.HelpApp", function ($scope, editorState, userService, contentResource) {

        var vm = this;

        vm.CurrentNodeAlias = editorState.current.contentTypeAlias;

    });
