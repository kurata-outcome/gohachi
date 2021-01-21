(function($) {
    new WOW().init();

    $('.burger-icon').click(function(){
        var setSpace = $('header').innerHeight();
        $('.md-menu').css('top',setSpace);
        $('.md-menu').slideToggle(300);
        $(this).toggleClass('open');
    });

    $('#contact_upload').on('change', function(ev){
        var fileName = $(this).val();
        if ( typeof(fileName) == 'string' && fileName != '' ) {
            $('#upload_filename').text(fileName);
        } else {
            $('#upload_filename').text('選択されていません');
        }
    });

    $(window).load(function(){
        var setSpace = $('header').innerHeight();
        $('.header-space').height(setSpace);
        $('.top-menu').css('top',setSpace);
    });

    $(window).resize(function(){
        var setSpace = $('header').innerHeight();
        $('.header-space').height(setSpace);
        $('.md-menu').css('top', setSpace);

        var WW = $(window).width();
        if ( WW > 1025 ) {
            $('.burger-icon').removeClass('open');
            $('.md-menu').slideUp(300);
            $('.md-menu').css('top',setSpace);
        } else {
            $('.md-menu').css('top',setSpace);
        }
    });

    $(window).scroll(function(){
        var setSpace = $('header').innerHeight();
        $('.md-menu').css('top',setSpace);

        var WT = $(window).scrollTop();
        if ( WT > 100 ) {
            $('header').addClass('header-scroll');
            $('.right-top-menu').addClass('close');
        } else {
            $('header').removeClass('header-scroll');
            $('.right-top-menu').removeClass('close');
        }

        $('.burger-icon').removeClass('open');
        $('.md-menu').slideUp(300);
    });
})(jQuery);