angular.module("umbraco")
    .controller("Carbide.StaticTextController",
        function ($scope, $http) {

            var vm = this;

            $scope.model.hideLabel = ($scope.model.config.fullWidth === 1 || $scope.model.config.fullWidth === '1' ? true : false);

            vm.value = $scope.model.config.defaultValue.toString();

            var tagStart = vm.value.indexOf('{{tags:');

            if (tagStart !== -1) {

                tagStart += 7;
                var tagEnd = vm.value.indexOf('}', tagStart);

                if (tagEnd !== -1 && tagEnd > tagStart) {

                    var groupName = vm.value.substring(tagStart, tagEnd);

                    $http.get('/umbraco/surface/helpers/gettags?groupName=' + groupName).then(t => {

                        if (t.data.list.length > 0) {

                            var tags = '<span class="used-tag">' + t.data.list.toString().replace(/,/g, '</span><span class="used-tag">') + '</span>';

                            vm.value = vm.value.replace('{{tags:' + groupName + '}}', tags);

                        } else {

                            vm.value = vm.value.replace('{{tags:' + groupName + '}}', '<em>No tags are being used</em>');
                        }
                    });
                }
            }

        });
