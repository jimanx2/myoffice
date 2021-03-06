$(document).ready(function () {
    $(window).load(function(){

        // initialize

        var $container = $(".feed").isotope({
            resizable: false,
            itemSelector: ".switch-item",
            layoutMode: "masonry"
        });

        $(".filter a").on("click", function () {

            var selector = $(this).attr("data-filter");
            $(".filter").find("li").removeClass("active");
            $(this).parent().addClass("active");
            $container.isotope({
                filter: selector
            });

            return false;
        });

        $(document).on("click", ".toggle-sidebar", function (e) {
            e.preventDefault();
            $container.isotope('layout');
        });

        $(document).on("click", ".view-options label", function (e) {
            e.preventDefault();
            if ($(this).data("view") === "grid") {
                $container.isotope('layout');
            } else if ($(this).data("view") === "list") {
                //$container.isotope('destroy')
                $container.isotope('layout');
            }
        });

    });
});
