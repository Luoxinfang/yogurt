/**
 * Created by roy on 2015/5/6.
 * 选项卡插件
 */

(function ($) {
  $.fn.tab = function (opt) {
    var opt = $.extend({}, $.fn.tab.opts, opt);
    var className = opt.className || 'curr';
    var eventName = opt.event || opt.eventName || 'click';
    var callback = opt.callback || null;
    this.each(function () {
      var $tap = $(this).children('.tab');
      var $con = $(this).children('.con');
      var index = $tap.data('type');
      if ('number' !== typeof index) {
        var hash = window.location.hash;
        if (-1 !== hash.indexOf('tab')) {
          index = +hash.split('-')[1];
        } else {
          index = 0;
        }
      }
      var switchTab = function () {
        var $this = $(this);
        if($this.hasClass('no-tab')){
          return false;
        }
        index = $this.data('type')||$tap.find('li').index($this);
        $this.addClass(className).siblings().removeClass(className);
        $con.children().removeClass(className).eq(index).addClass(className);
        if ('function' === typeof callback) {
          callback.bind(this)();
        }
      };
      $tap.find('li[data-type="' + index + '"]').addClass(className).siblings().removeClass(className);
      var _$con = $con.children('li').eq(index);
      if (_$con.length === 0) {
        _$con = $con.children('.con-item').eq(index);
      }
      if (_$con.length) {
        _$con.addClass(className).siblings().removeClass(className);
      } else {
        $con.children().removeClass(className).eq(index).addClass(className);
      }

      $tap.on(eventName, 'li:not(.' + className + ')', switchTab);

    });
  };
})(jQuery);