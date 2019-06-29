angular.module("umbraco")
    .controller("Carbide.HelpApp", function ($scope, editorState, userService, contentResource) {

        var vm = this;

        vm.CurrentNodeAlias = editorState.current.contentTypeAlias;

    });
