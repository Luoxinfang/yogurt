/**
 * Created by luoxinfang on 15/9/3.
 * index page
 * @author roy
 *
 */
//require('common:widget/js/slider.js');
module.exports = {
  init: function () {
    $('.slider-wrap').find('.slider').slider();


    this.events();
  },
  //bigpipe loaded 
  pageletdone: function () {
    var $loading = $('.' + arguments[1].id + '-wrap').find('.loading');
    $loading.hide();
  },
  //events
  events: function () {
    BigPipe.on('pageletdone', this.pageletdone);
  }
};