(function ($) {

    $.fn.bolideSimpleHero = function(options) {

        var settings = $.extend({

            slideDuration: 5000,
            transitionTime: 1500,
            startingSlide: 0,
            showCountdown: true

        }, options);

        var instance = this;
        var slideCount = $('#' + instance.attr('id') + ' .frame').length;
        var slideTimer;
        var countdownTimer;
        var countdown = parseInt(settings.slideDuration / 1000);

        // Preload images into browser cache
        var images = new Array();

        $('#' + instance.attr('id') + ' #hero-content .frame').each(function (index) {

            images[index] = new Image();
            images[index].src = $(this).attr('data-img');
        });

        $('#' + instance.attr('id') + ' #hero-content .nodes > a').each(function (index) {

            $(this).on("click", function () {

                nextSlide(index);
            });
        });

        nextSlide(settings.startingSlide);

        if (settings.showCountdown) {

            displayCountdown();
        }

        return this;

        function nextSlide(index) {

            var nodeIndex = index;
            var nextSlideIndex = index + 1;

            if (nextSlideIndex >= slideCount) {

                nextSlideIndex = 0;
            }

            if (slideCount > 1) {

                clearTimeout(slideTimer);

                countdown = parseInt(settings.slideDuration / 1000);

                if (settings.showCountdown) {

                    displayCountdown();
                }

                clearTimeout(countdownTimer);
                countdownTimer = setInterval(function () {

                    countdown--;

                    if (settings.showCountdown) {

                        displayCountdown();
                    }

                }, 1000);

                slideTimer = setTimeout(function () {

                    nextSlide(nextSlideIndex);

                }, settings.slideDuration);
            }

            $('#' + instance.attr('id') + ' #hero-content .nodes > a').each(function (index) {

                if (index !== nodeIndex) {

                    $(this).html('<i class="far fa-circle"></i>');

                } else {

                    $(this).html('<i class="fas fa-circle"></i>');
                }
            });

            $('#' + instance.attr('id') + ' #hero-content .frame').each(function (index) {

                var frame = this;

                if (index !== nodeIndex) {

                    $(frame).removeClass('current');

                } else {

                    $(frame).addClass('current');

                    $('#' + instance.attr('id')).backstretch($(frame).attr('data-img'), {

                        transitionDuration: settings.transitionTime,
                        transitionEasing: 'linear'
                    });
                }
            });
        }

        function displayCountdown() {

            var text = "";

            if (countdown > 0) {

                text = countdown;
            }

            $('#' + instance.attr('id') + ' #hero-content .nodes > span').html(text);
        }
    };

}(jQuery));
