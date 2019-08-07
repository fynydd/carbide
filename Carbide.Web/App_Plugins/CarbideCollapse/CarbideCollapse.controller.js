angular.module('umbraco.services').config([
    '$httpProvider',
    function ($httpProvider) {
        $httpProvider.interceptors.push(function ($q, $location) {
            return {
                'response': function (response) {
                    if (response.config.url.includes('/umbraco/backoffice/UmbracoApi/Content/GetById')
                            || response.config.url.includes('/umbraco/backoffice/UmbracoApi/Media/GetById')
                            || response.config.url.includes('umbraco/backoffice/UmbracoApi/Content/GetEmpty')) {
                        if (response.status === 200) {
                            window.setTimeout(function () {
                                var containers = document.getElementsByClassName("umb-editor-container");
                                if (containers) {
                                    for (var c = 0; c < containers.length; c++) {
                                        var tabs = containers[c].getElementsByClassName("umb-group-panel__header");
                                        if (tabs) {
                                            if (tabs.length > 0) {
                                                for (var i = 0; i < tabs.length; i++) {
                                                    tabs[i].classList.add("CarbideCollapse");
                                                    tabs[i].nextElementSibling.classList.add("CarbideCollapse");
                                                    if (tabs[i].onclick == null) {
                                                        tabs[i].onclick = function () {
                                                            this.classList.toggle("open");
                                                            this.nextElementSibling.classList.toggle("open");
                                                        }
                                                    }
                                                }
                                                if (tabs[0]) {
                                                    tabs[0].classList.add("open");
                                                    tabs[0].nextElementSibling.classList.add("open");
                                                }
                                            }
                                        }

                                    }
                                }
                            }, 500)
                        }
                    }
                    return response;
                }
            };
        });
    }
]);
