var gl_path = jQuery('#gl_path').html();

function include(scriptUrl) {
    document.write('<script src="catalog/view/theme/' + gl_path + '/' + scriptUrl + '"></script>');
}
include('js/jquery.easing.1.3.js');;
(function($) {
    var o = $('html');
    if (o.hasClass('desktop')) {
        include('js/jquery.ui.totop.js');
        $(document).ready(function() {
            $().UItoTop({
                easingType: 'easeOutQuart'
            });
        });
    }
})(jQuery);;
(function($) {
    var o = $('html');
    var menu = $('#stuck');
    if (o.hasClass('desktop') && menu.length) {
        include('js/scrollfix.min.js');
        $(window).load(function() {
            menu.scrollFix({
                style: false
            });
        });
    }
})(jQuery);;
(function($) {
    var o = $('button[id^=\'button-upload\']');
    if (o.length) {
        $('button[id^=\'button-upload\']').on('click', function() {
            var node = this;
            $('#form-upload').remove();
            $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
            $('#form-upload input[name=\'file\']').trigger('click');
            if (typeof timer != 'undefined') {
                clearInterval(timer);
            }
            timer = setInterval(function() {
                if ($('#form-upload input[name=\'file\']').val() != '') {
                    clearInterval(timer);
                    $.ajax({
                        url: 'index.php?route=tool/upload',
                        type: 'post',
                        dataType: 'json',
                        data: new FormData($('#form-upload')[0]),
                        cache: false,
                        contentType: false,
                        processData: false,
                        beforeSend: function() {
                            $(node).button('loading');
                        },
                        complete: function() {
                            $(node).button('reset');
                        },
                        success: function(json) {
                            $('.text-danger').remove();
                            if (json['error']) {
                                $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                            }
                            if (json['success']) {
                                alert(json['success']);
                                $(node).parent().find('input').attr('value', json['code']);
                            }
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            }, 500);
        });
    }
})(jQuery);;
(function($) {
    $(document).ready(function() {
        var pgurl = window.location.href;
        $("#top-links a").each(function() {
            if ($(this).attr("href") == pgurl || $(this).attr("href") == '')
                $(this).addClass("active");
        });
    });
})(jQuery);;
(function($) {
    include('js/jquery.rd-navbar.min.js');
})(jQuery);;
(function($) {
    var o = $('.lazy img');
    if (o.length > 0) {
        include('js/jquery.unveil.min.js');
        $(document).ready(function() {
            $(o).unveil(0, function() {
                $(this).load(function() {
                    $(this).parent().addClass("lazy-loaded");
                })
            });
        });
        $(window).load(function() {
            $(window).trigger('lookup.unveil');
            if ($('.nav-tabs').length) {
                $('.nav-tabs').find('a[data-toggle="tab"]').click(function() {
                    setTimeout(function() {
                        $(window).trigger('lookup.unveil');
                    }, 400);
                })
            }
        });
    }
})(jQuery);;
(function($) {
    var o = $('#image-additional');
    if (o.length > 0) {
        include('js/magnificent/jquery.ba-throttle-debounce.js');
        include('js/magnificent/jquery.bridget.js');
        include('js/magnificent/magnificent.js');
        $(document).ready(function() {
            o.find('li:first-child a').addClass('active');
            $('#product-image').bind("click", function(e) {
                var imgArr = [];
                o.find('a').each(function() {
                    img_src = $(this).data("image");
                    if (img_src == $('#product-image').find('img').attr('src')) {
                        imgArr.unshift({
                            href: '' + img_src + '',
                            title: $(this).find('img').attr("title")
                        });
                    } else {
                        imgArr.push({
                            href: '' + img_src + '',
                            title: $(this).find('img').attr("title")
                        });
                    }
                });
                $.fancybox(imgArr);
                return false;
            });
            o.find('[data-image]').click(function(e) {
                e.preventDefault();
                o.find('.active').removeClass('active');
                var img = $(this).data('image');
                $(this).addClass('active');
                $('#product-image').find('.inner img').each(function() {
                    $(this).attr('src', img);
                })
            })
        });
    }
})(jQuery);;
(function($) {
    var o = $('#image-additional');
    var o2 = $('#gallery');
    if (o.length || o2.length) {
        include('js/jquery.bxslider/jquery.bxslider.js');
    }
    if (o.length) {
        $(document).ready(function() {
            $('#image-additional').bxSlider({
                mode: 'vertical',
                pager: false,
                controls: true,
                slideMargin: 13,
                minSlides: 4,
                maxSlides: 4,
                slideWidth: 88,
                nextText: '<i class="material-design-drop25"></i>',
                prevText: '<i class="material-design-drop27"></i>',
                infiniteLoop: false,
                adaptiveHeight: true,
                moveSlides: 1
            });
        });
    }
    if (o2.length) {
        include('js/photo-swipe/klass.min.js');
        include('js/photo-swipe/code.photoswipe.jquery-3.0.5.js');
        include('js/photo-swipe/code.photoswipe-3.0.5.min.js');
        $(document).ready(function() {
            $('#gallery').bxSlider({
                pager: false,
                controls: true,
                minSlides: 1,
                maxSlides: 1,
                infiniteLoop: false,
                moveSlides: 1
            });
        });
    }
})(jQuery);;
(function($) {
    var o = $('.quickview');
    var o2 = $('#default_gallery');
    if (o.length > 0 || o2.length > 0) {
        include('js/fancybox/jquery.fancybox.js');
    }
    if (o.length) {
        $(document).ready(function() {
            o.fancybox({
                maxWidth: 800,
                maxHeight: 600,
                fitToView: false,
                width: '70%',
                height: '70%',
                autoSize: false,
                closeClick: false,
                openEffect: 'elastic',
                closeEffect: 'elastic',
                speedIn: 600,
                speedOut: 600
            });
        });
    }
})(jQuery);;
(function($) {
    include('js/superfish.min.js');
    $(window).load(function() {
        $('#tm_menu .menu').superfish();
    });
})(jQuery);;
(function($) {
    var o = $('.testimonials');
    if (o.length > 0) {
        $(document).ready(function() {
            o.owlCarousel({
                items: 1,
                itemsCustom: false,
                singleItem: true,
                pagination: false,
                navigation: true,
                navigationText: ['<i class="material-design-keyboard54"></i>', '<i class="material-design-keyboard53"></i>'],
            });
        });
    }
})(jQuery);;
(function($) {
    var o = $('.box-carousel');
    if (o.length > 0) {
        $(document).ready(function() {
            $.each(o, function() {
                if ($(this).parents('aside').length == 0) {
                    o.owlCarousel({
                        items: 4,
                        itemsCustom: false,
                        itemsDesktop: [1199, 4],
                        itemsDesktopSmall: [980, 4],
                        itemsTablet: [768, 3],
                        itemsTabletSmall: false,
                        itemsMobile: [479, 2],
                        pagination: false,
                        navigation: true,
                        navigationText: ['<i class="material-design-keyboard54"></i>', '<i class="material-design-keyboard53"></i>']
                    });
                }
            });
        });
    }
})(jQuery);;
(function($) {
    var o = $('[data-equal-group]');
    if (o.length > 0) {
        include('js/jquery.equalheights.min.js');
    }
})(jQuery);;
(function($) {
    var o = $('.toggle');
    $(document).ready(function() {
        $('.toggle').click(function(e) {
            e.preventDefault();
            var tmp = $(this);
            o.each(function() {
                if ($(this).hasClass('active') && !$(this).is(tmp)) {
                    $(this).parent().find('.toggle_cont').slideToggle();
                    $(this).removeClass('active');
                }
            });
            $(this).toggleClass('active');
            $(this).parent().find('.toggle_cont').slideToggle();
        });
        $(document).on('click touchstart', function(e) {
            var container = $(".toggle-wrap");
            if (!container.is(e.target) && container.has(e.target).length === 0 && container.find('.toggle').hasClass('active')) {
                container.find('.active').toggleClass('active').parent().find('.toggle_cont').slideToggle();
            }
        })
    });
})(jQuery);;
(function($) {
    $('.fb-toggle').click(function(e) {
        $(this).parent().toggleClass('active');
    });
    $(document).on('click touchstart', function(e) {
        var container = $(".fb-toggle-wrap");
        if (!container.is(e.target) && container.has(e.target).length === 0 && container.hasClass('active')) {
            container.toggleClass('active');
        }
    });
})(jQuery);;
(function($) {
    var o = $('.radio');
    if (o.length) {
        $(window).load(function() {
            var input;
            var arrVal = [];
            o.each(function(i) {
                input = $(this).find('input[type="radio"]');
                if ($.inArray(input.attr('name') + input.attr('value'), arrVal) == -1) {
                    input.attr('id', input.attr('name') + input.attr('value'))
                    input.insertBefore($(this).find('label').attr('for', input.attr('name') + input.attr('value')));
                    arrVal.push(input.attr('name') + input.attr('value'))
                } else {
                    input.attr('id', input.attr('name') + input.attr('value') + i.toString());
                    input.insertBefore($(this).find('label').attr('for', input.attr('name') + input.attr('value') + i.toString()));
                    arrVal.push(input.attr('name') + input.attr('value') + i.toString());
                }
            })
        });
    }
    var o2 = $('label.radio-inline');
    if (o2.length) {
        $(document).ready(function() {
            var input;
            o2.each(function() {
                input = $(this).find('input[type="radio"]');
                input.attr('id', input.attr('name') + input.attr('value'))
                input.insertBefore($(this).attr('for', input.attr('name') + input.attr('value')));
            })
        });
    }
})(jQuery);;
(function($) {
    var o = $('#accordion');
    if (o.length) {
        include('js/jquery.selectbox-0.2.min.js');
        $(window).load(function() {
            $('body').delegate('.accordion-toggle', 'click', replaceForm);
            $('.accordion-toggle').trigger('click');
        });
    }
})(jQuery);;
(function($) {
    var o = $('.checkbox');
    if (o.length) {
        $(document).ready(function() {
            var input;
            var arrVal = [];
            o.each(function(i) {
                input = $(this).find('input[type="checkbox"]');
                if ($.inArray(input.attr('name') + input.attr('value'), arrVal) == -1) {
                    input.attr('id', input.attr('name') + input.attr('value'))
                    input.insertBefore($(this).find('label').attr('for', input.attr('name') + input.attr('value')));
                    arrVal.push(input.attr('name') + input.attr('value'))
                } else {
                    input.attr('id', input.attr('name') + input.attr('value') + input.attr('value') + i.toString())
                    input.insertBefore($(this).find('label').attr('for', input.attr('name') + input.attr('value') + input.attr('value') + i.toString()));
                    arrVal.push(input.attr('name') + input.attr('value') + i.toString());
                }
            })
        });
    }
    var o2 = $('input[name=\'agree\'][type=\'checkbox\']');
    if (o2.length) {
        $(document).ready(function() {
            o2.attr('id', o2.attr('name') + o2.attr('value'));
            o2.parent().append('<label for="' + o2.attr('name') + o2.attr('value') + '"></label>');
            $('label[for="' + o2.attr('name') + o2.attr('value') + '"]').insertAfter(o2);
        });
    }
    var o3 = $('.checkbox-inline');
    if (o3.length) {
        var input;
        o3.each(function(i) {
            input = $(this).find('input[type="checkbox"]');
            input.attr('id', input.attr('name') + input.attr('value'))
            input.insertBefore($(this).attr('for', input.attr('name') + input.attr('value')));
        })
    }
})(jQuery);;
(function($) {
    $('.date').datetimepicker({
        pickTime: false
    });
    $('.datetime').datetimepicker({
        pickDate: true,
        pickTime: true
    });
    $('.time').datetimepicker({
        pickDate: false
    });
    $(document).ready(function() {
        $('.date,.datetime,.time').each(function() {
            var $this = $(this);
            $(this).find('.btn').click(function() {
                var body = $('body');
                if (body.hasClass('ajax-overlay-open')) {
                    var open;
                    setTimeout(function() {
                        open = $('body').find('.bootstrap-datetimepicker-widget.picker-open');
                        if (open.hasClass('top')) {
                            open.css('bottom', $(window).height() - ($this.offset().top - $('.ajax-overlay').offset().top));
                        }
                    }, 10);
                }
            })
        })
    });
    $(document).ready(function() {
        $('.date, .datetime, .time').on('dp.show', function() {
            $('.date, .datetime, .time').not($(this)).each(function() {
                $(this).data("DateTimePicker").hide();
            });
        });
        $(this).on('click touchstart', function() {
            $('.date, .datetime, .time').each(function() {
                $(this).data("DateTimePicker").hide();
            });
        })
    });
})(jQuery);;
(function($) {
    var o = $('select');
    if (o.length) {
        include('js/jquery.selectbox-0.2.min.js');
        $(document).ready(function() {
            o.removeClass('form-control');
            o.selectbox({
                effect: "slide",
                speed: 400
            })
            var zone = $('select[name=\'zone_id\']');
            if (zone.length) {
                setTimeout(function() {
                    zone.selectbox('detach');
                    zone.selectbox('attach');
                }, 900);
                $('select[name=\'country_id\']').on('change', function() {
                    setTimeout(function() {
                        zone.selectbox('detach');
                        zone.selectbox('attach');
                    }, 300);
                })
            }
        });
    }
})(jQuery);;
(function($) {
    var o = $('textarea');
    if (o.length) {
        $(document).ready(function() {
            o.removeClass('form-control');
        });
    }
})(jQuery);;
(function($) {
    var o = $('input[name*="quantity"]');
    $(document).ready(function() {
        $('.counter-minus').click(function(e) {
            e.preventDefault();
            input = $(this).parent().find('input[name*="quantity"]');
            if (input.val() > 1) {
                value = parseInt(input.val()) - 1;
                input.val(value);
            }
        })
        $('.counter-plus').click(function(e) {
            e.preventDefault();
            input = $(this).parent().find('input[name*="quantity"]');
            value = parseInt(input.val()) + 1;
            input.val(value);
        })
    });
})(jQuery);
$(document).ready(function() {
    if ($('.breadcrumb').length) {
        var o = $('.breadcrumb li:last-child');
        var str = o.find('a').html();
        o.find('a').css('display', 'none');
        o.append('<span>' + str + '</span>');
    }
});
var flag = true;

function respResize() {
    var width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
    if ($('aside').length) {
        var leftColumn = $('aside');
    } else {
        return false;
    }
    if (width > 767) {
        if (!flag) {
            flag = true;
            leftColumn.insertBefore('#content');
            if (window.twttr != undefined) {
                twtrefresher.doRefresh();
            }
            $('.col-sm-3 .box-heading').unbind("click");
            $('.col-sm-3 .box-content').each(function() {
                if ($(this).is(":hidden")) {
                    $(this).slideToggle();
                }
            })
        }
    } else if (flag) {
        flag = false;
        if ($('.clr').length == 0) {
            $('#content .product-layout').each(function(i) {
                if (i % 2 == 0) {
                    $(this).addClass('clr');
                }
            });
        }
        leftColumn.insertAfter('#content');
        if (window.twttr != undefined) {
            twtrefresher.doRefresh();
        }
        $('.col-sm-3 .box-content').each(function() {
            if (!$(this).is(":hidden")) {
                $(this).parent().find('.box-heading').addClass('active');
            }
        });
        $('.col-sm-3 .box-heading').bind("click", function() {
            if ($(this).hasClass('active')) {
                $(this).removeClass('active').parent().find('.box-content').slideToggle();
            } else {
                $(this).addClass('active');
                $(this).parent().find('.box-content').slideToggle();
            }
        })
    }
}
$(window).load(respResize);
$(window).resize(function() {
    clearTimeout(this.id);
    this.id = setTimeout(respResize, 500);
});
$('#fixed-filter').on('click', function() {
    $('html, body').animate({
        'scrollTop': $("#filter-content").offset().top
    }, 1);
})

function replaceForm() {
    var o = $('.radio');
    var input;
    o.each(function() {
        input = $(this).find('input[type="radio"]');
        input.attr('id', input.attr('name') + input.attr('value'));
        input.insertBefore($(this).find('label').attr('for', input.attr('name') + input.attr('value')));
    });
    o = $('label.radio-inline');
    o.each(function() {
        input = $(this).find('input[type="radio"]');
        input.attr('id', input.attr('name') + input.attr('value'));
        input.insertBefore($(this).attr('for', input.attr('name') + input.attr('value')));
    });
    o = $('.checkbox');
    o.each(function() {
        input = $(this).find('input[type="checkbox"]');
        input.attr('id', input.attr('name') + input.attr('value'));
        input.insertBefore($(this).find('label').attr('for', input.attr('name') + input.attr('value')));
    });
    o = $('input[name=\'agree\'][type=\'checkbox\']');
    if (o.length) {
        o.attr('id', o.attr('name') + o.attr('value'));
        o.parent().append('<label for="' + o.attr('name') + o.attr('value') + '"></label>');
        $('label[for="' + o.attr('name') + o.attr('value') + '"]').insertAfter(o);
    }
    o = $('select');
    o.selectbox({
        effect: "slide",
        speed: 400
    });
    var o = $('textarea');
    o.removeClass('form-control');
    var zone = $('select[name=\'zone_id\']');
    if (zone.length) {
        var timerId = 0;
        zone.each(function(i) {
            if ($(this).prev().find('.sbOptions li').length == 0) {
                var tmp = $(this);
                timerId = setInterval(function() {
                    tmp.selectbox('detach');
                    tmp.selectbox('attach');
                    if (tmp.prev().find('.sbOptions li').length != 0) {
                        clearInterval(timerId);
                    }
                }, 300);
            }
        })
        $('select[name=\'country_id\']').on('change', function() {
            setTimeout(function() {
                zone.selectbox('detach');
                zone.selectbox('attach');
            }, 300);
        })
    }
}