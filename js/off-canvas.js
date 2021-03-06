$(document).ready(function () {

    var container = $(".app"),
        canvasDirection,
        w = $(window),
        delay = 300,
        direction,
        rapidClick = false;

    function closeOffCanvas(delay) {
        container.removeClass("move-left move-right");
        canvasDirection = "";

        setTimeout(function(){
          container.removeClass("off-canvas");
          rapidClick = false;
        }, delay);
    }

    function toggle(direction) {

        if (direction !== undefined && direction === "rtl") {
            container.addClass("off-canvas move-right").removeClass("move-left");
            canvasDirection = "rtl";
        } else {
            container.addClass("off-canvas move-left").removeClass("move-right");
            canvasDirection = "ltr";
        }
    }

    $(".main-content").append('<div class="site-overlay"></div>');

    $( "[data-toggle=off-canvas]" ).on( "click", function(e) {

        e.preventDefault();

        if (w.width() >= 767 ) {
            delay = 0;
        }

        direction = $(this).data("move");

        if (direction === canvasDirection) {
            closeOffCanvas(delay);
            return;
        }

        if(rapidClick) return;

        rapidClick = true;

        toggle(direction);

    });


    $(document).on("click", ".main-navigation .dropdown-menu > li > a", function () {

        if (w.width() <= 767 ) {

            if (container.hasClass("move-right") || container.hasClass("move-left")) {
                closeOffCanvas(delay);
            }

            if (container.hasClass("move-right")) {
                container.toggleClass("move-right");
            }

            if (container.hasClass("move-left")) {
                container.toggleClass("move-left");
            }
        }
    });

    $(".main-content").on("click", ".site-overlay", function (e) {

        e.preventDefault();
        e.stopPropagation();

        closeOffCanvas(delay);

    });

});
