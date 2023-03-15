$(document).ready(function () {
    var vm = {
        init: function () {
            console.log('global')
            vm.search();
            vm.mobile();
            vm.scroll();
        },
        search: function () {
            $('.header-search button.search').click(function () {
                $('body').toggleClass('search-active');
            });
            $('.header-search .btn-close').click(function () {
                $('body').removeClass('search-active');
            });
        },
        mobile: function () {
            $('.header .btn-hamburger').click(function () {
                $('body').toggleClass('menu-active');
            });
        },
        scroll: function () {
            var _scroll = {
                max: ($(window).height() / 2),
                current: 0,
                init: function () {
                    _scroll.action();
                },
                action: function () {
                    var _action = {
                        init: function () {
                            _action.on_load();
                            _action.on_scroll();
                        },
                        on_load: function () {
                            _action.on_active(_scroll.position());
                        },
                        on_scroll: function () {
                            $(window).scroll(function () {
                                _action.on_active(_scroll.position());
                                var top = $(this).scrollTop();
                                if (top < _scroll.current && top > 10) {
                                    $('body').addClass('scroll-up');
                                } else {
                                    $('body').removeClass('scroll-up');
                                }
                                _scroll.current = top;
                            });
                        },
                        on_active: function (pos) {
                            if (pos > _scroll.max) $('body').addClass('scroll-active');
                            else $('body').removeClass('scroll-active');
                        }
                    }
                    _action.init();
                },
                position: function () {
                    return window.pageYOffset;
                }
            }
            _scroll.init();
        },
    };
    vm.init();
});