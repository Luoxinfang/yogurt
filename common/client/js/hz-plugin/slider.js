/**
 *
 * Created by roy on 15/8/31.
 * @description for slider widget
 */

(function ($) {
  $.fn.extend({
    /*
     * @description slider
     * @param opt {
     *  type: fade| 动画的类型
     *  time: 6000| 切换间隔的时间
     * }
     */
    slider: function (opt) {
      var that = this,
          opt = opt || {},
          type = opt.type || 'fade', //动画类型
          time = opt.time || 5000,//间隔时间
          hover = opt.hover || false,//是否支持鼠标悬停
          $list = $(that).find('.item') || $(that).find('.i') || $(that).child('ul>li'), //元素的dom
          $index = $(that).find('.index'),//索引的dom
          length = $list.length, //元素的长度
          currIndex = 0, //
          slideFunc = getSlideFunc(type),
          runner = slideFunc ? setInterval(slideFunc, time) : function () {
            return false;
          };
      appendIndex(length);

      //鼠标悬停事件
      if (hover) {
        $(that).hover(function () {
          clearInterval(runner);
        }, function () {
          runner = setInterval(slideFunc, time);
        });
      }

      function getSlideFunc(type) {
        var slideFunc;
        switch (type) {
          case 'fade':
            slideFunc = function () {
              $list.eq(currIndex).fadeIn('normal').css('display', 'block');
              $index.find('.on').removeClass('on').addClass('off');
              for (var i = 0; i < length; i++) {
                if (i !== currIndex) {
                  $list.eq(i).css('display', 'none');
                } else {
                  $index.find('li').eq(i).removeClass('off').addClass('on');
                }
              }
              currIndex = (++currIndex) % length;
            };
            break;
          case 'slide':
            slideFunc = function () {

            }
            break;
        }
        return slideFunc;
      }

      //添加索引
      function appendIndex(length) {
        if (length <= 1) return false;
        var htmlStr = '<li class="item on"></li>';
        for (var i = 0; i < length - 1; i++) {
          htmlStr += '<li class="item off"></li>';
        }
        $index.html(htmlStr).css('margin-left', -10 * length + 'px');
        $index.on('click', '.off', function () {
          currIndex = $index.find('li').index(this);
          slideFunc();
        });
      }
    }
  });
})(jQuery);