$(document).ready(function () {
    
    var nav = '';
   
    nav += '    <div id="navWrapper">'
            
        /*////////////////////////////
        //         NAV LEFT'
        ////////////////////////////*/
    nav += '        <div class="nav" id="navLeftWrapper">'
    
    nav += '            <div id="btnNav"><a href="#"> < </a></div>'
    
    nav += '            <h1 class="navLeft" id="logo">'
    nav += '                <a href="index.html">LOGO</a>'
    nav += '            </h1>'
    
    nav += '            <ul class="navLeft" id="menu">'
    nav += '                <li><a href="01.html">01</a></li>'
    nav += '                <li><a href="02.html">02</a></li>'
    nav += '                <li><a href="03.html">03</a></li>'
    nav += '                <li><a href="04.html">04</a></li>'
    nav += '            </ul>'
    
    nav += '            <div class="navLeft" id="footer">'
    nav += '                <p>e Lorem ipsum dolor sit amet</p>'
    nav += '            </div>'
    
    nav += '        </div>'
                    
        /*////////////////////////////
        //         NAV RIGHT'
        ////////////////////////////*/
    nav += '        <div class="nav" id="navRightWrapper">'
    nav += '            <ul class="navRight" id="quickNav">'
    nav += '                <li><a href="#">01</a></li>'
    nav += '                <li><a href="#">02</a></li>'
    nav += '                <li><a href="#">03</a></li>'
    nav += '            </ul>'
                
    nav += '            <div class="navRight" id="goTop">'
    nav += '                <p><a href="#top">TOP</a></p>'
    nav += '            </div>'
    nav += '        </div>'
            
    nav += '    </div>'


    $('body').prepend(nav);
    
    $('#btnNav').toggle( function () {

        $(this).parent().css('left', '-200px')
                .css('transition-duration', '1s');
        $('#btnNav > a').text('>');
        //                        .cssText('transition-delay', '1s');
        $('#contentWrapper > header, #main, footer')
            .css('padding-left','0px')
            .css('transition-duration', '1s');
    //            .css('padding-right',0);


        },function(){
            $(this).parent().css('left', '0px')
                    .css('transition-duration', '1s');
            $('#btnNav > a').text('<');     
        //        $('#contentWrapper > header, #main, footer')
            $('#contentWrapper').children()
                .css('padding-left','200px')
                .css('transition-duration', '1s');

    });
});






