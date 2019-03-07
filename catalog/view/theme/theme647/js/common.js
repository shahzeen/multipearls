function getURLVar(t) {
    var e = [],
        o = String(document.location).split("?");
    if (o[1]) {
        var a = o[1].split("&");
        for (i = 0; i < a.length; i++) {
            var n = a[i].split("=");
            n[0] && n[1] && (e[n[0]] = n[1])
        }
        return e[t] ? e[t] : ""
    }
}

function ajaxAdd(t, e) {
    var o = $(window).width(),
        a = t.parents(".product-thumb").find(".product-option-wrap");
    if (o > 767 && a.length) {
        var i = $(".ajax-overlay");
        i.append(a), i.addClass("visible"), $("body").addClass("ajax-overlay-open")
    } else cart.add(e)
}

function returnOptions() {
    var t = $(".ajax-overlay").find(".product-option-wrap");
    $("body").removeClass("ajax-overlay-open"), $(".product-thumb.options").each(function() {
        0 != $(this).find(".product-option-wrap").length || $(this).append(t)
    })
}
var timer;
$(document).ready(function() {
    cols1 = $("#column-right, #column-left").length, 2 == cols1 ? $("#content .product-layout:nth-child(2n+2)").after('<div class="clearfix visible-md visible-sm"></div>') : 1 == cols1 ? $("#content .product-layout:nth-child(4n+4)").after('<div class="clearfix hidden-xs"></div>') : $("#content .product-layout:nth-child(4n+5)").addClass("last"), $(".text-danger").each(function() {
        var t = $(this).parent().parent();
        t.hasClass("form-group") && t.addClass("has-error")
    }), $("#currency .currency-select").on("click", function(t) {
        t.preventDefault(), $("#currency input[name='code']").attr("value", $(this).attr("name")), $("#currency").submit()
    }), $("#language a").on("click", function(t) {
        t.preventDefault(), $("#language input[name='code']").attr("value", $(this).attr("href")), $("#language").submit()
    }), $("#search input[name='search']").parent().find("button").on("click", function() {
        url = $("base").attr("href") + "index.php?route=product/search";
        var t = $("header input[name='search']").val();
        t && (url += "&search=" + encodeURIComponent(t)), location = url
    }), $("#search input[name='search']").on("keydown", function(t) {
        13 == t.keyCode && $("header input[name='search']").parent().find("button").trigger("click")
    }), $("#menu .dropdown-menu").each(function() {
        var t = $("#menu").offset(),
            e = $(this).parent().offset().left + $(this).outerWidth() - (t.left + $("#menu").outerWidth());
        e > 0 && $(this).css("margin-left", "-" + (e + 5) + "px")
    }), $("#list-view").click(function() {
        $("#content .product-layout > .clearfix").remove(), $(this).addClass("active"), $("#grid-view").removeClass("active"), $("#content .product-layout").attr("class", "product-layout product-list col-xs-6"), localStorage.setItem("display", "list")
    }), $("#grid-view").click(function() {
        $(this).addClass("active"), $("#list-view").removeClass("active"), $("#content .product-layout > .clearfix").remove(), cols = $("#column-right, #column-left").length, 2 == cols ? $("#content .product-layout").attr("class", "product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-6") : 1 == cols ? $("#content .product-layout").attr("class", "product-layout product-grid col-lg-3 col-md-3 col-sm-3 col-xs-6") : $("#content .product-layout").attr("class", "product-layout product-grid col-lg-3 col-md-3 col-sm-3 col-xs-6"), localStorage.setItem("display", "grid")
    }), "list" == localStorage.getItem("display") ? $("#list-view").trigger("click") : $("#grid-view").trigger("click"), $(document).on("keydown", "#collapse-checkout-option input[name='email'], #collapse-checkout-option input[name='password']", function(t) {
        13 == t.keyCode && $("#collapse-checkout-option #button-login").trigger("click")
    });
    var t = /iPad|iPhone|iPod/.test(navigator.platform);
    t || $("[data-toggle='tooltip']").tooltip({
        container: "body",
        delay: {
            show: 500,
            hide: 100
        },
        trigger: "hover"
    }), $(document).ajaxStop(function() {
        t || $("[data-toggle='tooltip']").tooltip({
            container: "body",
            delay: {
                show: 500,
                hide: 100
            },
            trigger: "hover"
        })
    }), $(".ajax-overlay_close").on("click touchstart", function(t) {
        t.preventDefault(), $(".ajax-overlay").removeClass("visible"), returnOptions()
    }), $(document).on("click touchstart", function(t) {
        var e = $(".product-option-wrap"),
            o = $(".ajax-overlay");
        e.is(t.target) && o.hasClass("visible") && (o.removeClass("visible"), returnOptions())
    }), $("body").delegate(".alert .close", "click", function() {
        $(this).parent().addClass("fadeOut")
    })
});
var cart = {
        addPopup: function(t) {
            var e = t.parents(".product-option-wrap");
            $.ajax({
                url: "index.php?route=checkout/cart/add",
                type: "post",
                data: e.find("input[type='text'], input[type='radio']:checked, input[type='hidden'], input[type='checkbox']:checked, select, textarea"),
                dataType: "json",
                beforeSend: function() {
                    $("#cart > button").button("")
                },
                complete: function() {
                    $("#button-cart").button("reset")
                },
                success: function(t) {
                    if ($(".alert, .text-danger").remove(), clearTimeout(timer), t.error) {
                        if (t.error.option)
                            for (i in t.error.option) {
                                var e = $('[id*="input-option' + i.replace("_", "-") + '"]');
                                e.parent().hasClass("input-group") ? e.parent().after('<div class="text-danger">' + t.error.option[i] + "</div>") : e.after('<div class="text-danger">' + t.error.option[i] + "</div>")
                            }
                        t.error.recurring && $("select[name='recurring_id']").after('<div class="text-danger">' + t.error.recurring + "</div>"), $(".text-danger").parent().addClass("has-error")
                    }
                    t.success && ($(".ajax-overlay").removeClass("visible"), returnOptions(), $("#content").parent().before('<div class="alert alert-success"><i class="material-design-verification24"></i> ' + t.success + '<button type="button" class="close material-design-close47"></button></div>'), $("#cart-total").html(t.total), $("#cart-total2").html(t.total2), $("#cart > ul").load("index.php?route=common/cart/info ul li"), timer = setTimeout(function() {
                        $(".alert").addClass("fadeOut")
                    }, 4e3))
                }
            })
        },
        add: function(t, e) {
            $.ajax({
                url: "index.php?route=checkout/cart/add",
                type: "post",
                data: "product_id=" + t + "&quantity=" + (void 0 !== e ? e : 1),
                dataType: "json",
                beforeSend: function() {
                    $("#cart > button").button("")
                },
                complete: function() {
                    $("#cart > button").button("reset")
                },
                success: function(t) {
                    $(".alert, .text-danger").remove(), clearTimeout(timer), t.redirect && (location = t.redirect), t.success && ($("#content").parent().before('<div class="alert alert-success"><i class="material-design-verification24"></i> ' + t.success + '<button type="button" class="close material-design-close47"></button></div>'), $("#cart-total").html(t.total), $("#cart-total2").html(t.total2), $("#cart > ul").load("index.php?route=common/cart/info ul li"), timer = setTimeout(function() {
                        $(".alert").addClass("fadeOut")
                    }, 4e3))
                }
            })
        },
        update: function(t, e) {
            $.ajax({
                url: "index.php?route=checkout/cart/edit",
                type: "post",
                data: "key=" + t + "&quantity=" + (void 0 !== e ? e : 1),
                dataType: "json",
                beforeSend: function() {
                    $("#cart > button").button("")
                },
                success: function(t) {
                    clearTimeout(timer), $("#cart > button").button("reset"), $("#cart-total").html(t.total), "checkout/cart" == getURLVar("route") || "checkout/checkout" == getURLVar("route") ? location = "index.php?route=checkout/cart" : $("#cart > ul").load("index.php?route=common/cart/info ul li"), timer = setTimeout(function() {
                        $(".alert").addClass("fadeOut")
                    }, 4e3)
                }
            })
        },
        remove: function(t) {
            $.ajax({
                url: "index.php?route=checkout/cart/remove",
                type: "post",
                data: "key=" + t,
                dataType: "json",
                beforeSend: function() {
                    $("#cart > button").button("")
                },
                success: function(t) {
                    clearTimeout(timer), $("#cart > button").button("reset"), $("#cart-total").html(t.total), "checkout/cart" == getURLVar("route") || "checkout/checkout" == getURLVar("route") ? location = "index.php?route=checkout/cart" : ($("#cart").load("index.php?route=common/cart/info #cart"), location.reload()), timer = setTimeout(function() {
                        $(".alert").addClass("fadeOut")
                    }, 4e3)
                }
            })
        }
    },
    voucher = {
        add: function() {},
        remove: function(t) {
            $.ajax({
                url: "index.php?route=checkout/cart/remove",
                type: "post",
                data: "key=" + t,
                dataType: "json",
                beforeSend: function() {
                    $("#cart > button").button("loading")
                },
                complete: function() {
                    $("#cart > button").button("reset")
                },
                success: function(t) {
                    clearTimeout(timer), $("#cart-total").html(t.total), "checkout/cart" == getURLVar("route") || "checkout/checkout" == getURLVar("route") ? location = "index.php?route=checkout/cart" : $("#cart").load("index.php?route=common/cart/info #cart"), timer = setTimeout(function() {
                        $(".alert").addClass("fadeOut")
                    }, 4e3)
                }
            })
        }
    },
    wishlist = {
        add: function(t) {
            $.ajax({
                url: "index.php?route=account/wishlist/add",
                type: "post",
                data: "product_id=" + t,
                dataType: "json",
                success: function(t) {
                    clearTimeout(timer), $(".alert").remove(), t.success && $("#content").parent().before('<div class="alert alert-success"><i class="material-design-verification24"></i> ' + t.success + '<button type="button" class="close material-design-close47"></button></div>'), t.info && $("#content").parent().before('<div class="alert alert-info"><i class="material-design-round52"></i> ' + t.info + '<button type="button" class="close material-design-close47"></button></div>'), $("#wishlist-total").html(t.total), timer = setTimeout(function() {
                        $(".alert").addClass("fadeOut")
                    }, 4e3)
                }
            })
        },
        remove: function() {}
    },
    compare = {
        add: function(t) {
            $.ajax({
                url: "index.php?route=product/compare/add",
                type: "post",
                data: "product_id=" + t,
                dataType: "json",
                success: function(t) {
                    if (clearTimeout(timer), $(".alert").remove(), t.info && $("#content").parent().before('<div class="alert alert-info"><i class="material-design-round52"></i> ' + t.info + '<button type="button" class="close material-design-close47"></button></div>'), t.success) {
                        $("#content").parent().before('<div class="alert alert-success"><i class="material-design-verification24"></i> ' + t.success + '<button type="button" class="close material-design-close47"></button></div>'), t.warning && $(".alert").append('<div class="alert alert-warning"><i class="material-design-warning37"></i> ' + t.warning + '<button type="button" class="close material-design-close47"></button></div>'), $("#compare-total").attr("data-original-title", t.total);
                        var e = $("#compare-total2");
                        e.html(t.total), e.attr("title", t.total)
                    }
                    timer = setTimeout(function() {
                        $(".alert").addClass("fadeOut")
                    }, 4e3)
                }
            })
        },
        remove: function() {}
    };
$(document).delegate(".agree", "click", function(t) {
        t.preventDefault(), $("#modal-agree").remove();
        var e = this;
        $.ajax({
            url: $(e).attr("href"),
            type: "get",
            dataType: "html",
            success: function(t) {
                html = '<div id="modal-agree" class="modal">', html += '  <div class="modal-dialog">', html += '    <div class="modal-content">', html += '      <div class="modal-header">', html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>', html += '        <h4 class="modal-title">' + $(e).text() + "</h4>", html += "      </div>", html += '      <div class="modal-body">' + t + "</div>", html += "    </div", html += "  </div>", html += "</div>", $("body").append(html), $("#modal-agree").modal("show")
            }
        })
    }),
    function(t) {
        function e(e, o) {
            this.element = e, this.options = o, this.timer = null, this.items = new Array, t(e).attr("autocomplete", "off"), t(e).on("focus", t.proxy(this.focus, this)), t(e).on("blur", t.proxy(this.blur, this)), t(e).on("keydown", t.proxy(this.keydown, this)), t(e).after('<ul class="dropdown-menu"></ul>'), t(e).siblings("ul.dropdown-menu").delegate("a", "click", t.proxy(this.click, this))
        }
        e.prototype = {
            focus: function() {
                this.request()
            },
            blur: function() {
                setTimeout(function(t) {
                    t.hide()
                }, 200, this)
            },
            click: function(e) {
                e.preventDefault(), value = t(e.target).parent().attr("data-value"), value && this.items[value] && this.options.select(this.items[value])
            },
            keydown: function(t) {
                switch (t.keyCode) {
                    case 27:
                        this.hide();
                        break;
                    default:
                        this.request()
                }
            },
            show: function() {
                var e = t(this.element).position();
                t(this.element).siblings("ul.dropdown-menu").css({
                    top: e.top + t(this.element).outerHeight(),
                    left: e.left
                }), t(this.element).siblings("ul.dropdown-menu").show()
            },
            hide: function() {
                t(this.element).siblings("ul.dropdown-menu").hide()
            },
            request: function() {
                clearTimeout(this.timer), this.timer = setTimeout(function(e) {
                    e.options.source(t(e.element).val(), t.proxy(e.response, e))
                }, 200, this)
            },
            response: function(e) {
                if (html = "", e.length) {
                    for (i = 0; i < e.length; i++) this.items[e[i].value] = e[i];
                    for (i = 0; i < e.length; i++) e[i].category || (html += '<li data-value="' + e[i].value + '"><a href="#">' + e[i].label + "</a></li>");
                    var o = new Array;
                    for (i = 0; i < e.length; i++) e[i].category && (o[e[i].category] || (o[e[i].category] = new Array, o[e[i].category].name = e[i].category, o[e[i].category].item = new Array), o[e[i].category].item.push(e[i]));
                    for (i in o)
                        for (html += '<li class="dropdown-header">' + o[i].name + "</li>", j = 0; j < o[i].item.length; j++) html += '<li data-value="' + o[i].item[j].value + '"><a href="#">&nbsp;&nbsp;&nbsp;' + o[i].item[j].label + "</a></li>"
                }
                html ? this.show() : this.hide(), t(this.element).siblings("ul.dropdown-menu").html(html)
            }
        }, t.fn.autocomplete = function(o) {
            return this.each(function() {
                var a = t(this).data("autocomplete");
                a || (a = new e(this, o), t(this).data("autocomplete", a))
            })
        }
    }(window.jQuery);