/*
 模块：下拉
 例子：
 <div class="box">
 <div>标题</div>
 <div class="" dropDown>
 下拉内容
 </div>
 </div>
 $('.box').dropDown();
 */
(function ($) {
  $.fn.dropDown = function (options) {
    var opts = $.fn.extend({
      onMouseEnter: function () {
      },
      onMouseOut: function () {
      }
    }, options);
    return this.each(function () {
      var _this = this,
          div;
      if ($(_this).attr('status')) {
        return;
      }
      $(_this)
          .attr('status', 1)
          .mouseenter(function () {
            div = $(this).find('[dropDown]');
            $('[dropDown]').hide();
            div.stop(true, true);
            opts.onMouseEnter.call(_this);
            div.slideDown(200);
          })
          .mouseleave(function () {
            div = $(this).find('[dropDown]');
            div.slideUp(200, function () {
              opts.onMouseOut.call(_this);
            });
          });
    });
  };
})(jQuery);