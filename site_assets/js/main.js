
// heder footer
$(function () {
    $("#header-sec").load("header.html")
});
$(function () {
    $("#footer-sec").load("footer.html")
});


$(function () {
    $("#inner-banner").load("bread-crumb.html")
});
// heder footer

// header scroll down
$(window).on('scroll', function () {
    if ($(this).scrollTop() > 250) { // Set position from top
        $('.header_area').addClass("page-scroll");
    } else {
        $('.header_area').removeClass("page-scroll");
    }
});
// header scroll down

// menu active

$(document).ready(function () {
    $("#menu-sec li .menu-actv").click(function (e) {
        e.preventDefault();
        $("#menu-sec li a.active").removeClass("active"); //Remove any "active" class  
        $(this).addClass("active"); //Add "active" class to selected tab  

        // $(activeTab).show(); //Fade in the active content  
    });
});
// menu active



