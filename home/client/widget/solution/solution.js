/**
 * Created by luoxinfang on 15/9/3.
 * index page
 * @author roy
 *
 */
require('common:js/hz-plugin/tab.js');

module.exports = {
  init: function () {
    $('.tab-func').tab();

    this.events();
  },
  //bigpipe loaded 
  pageletdone: function () {
    //var $loading = $('.' + arguments[1].id + '-warp').find('.loading');
    //$loading.hide();
  },
  //events
  events: function () {
    //BigPipe.on('pageletdone', this.pageletdone);
  }
};