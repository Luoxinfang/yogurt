/**
 * Created by luoxinfang on 15/9/6.
 */

module.exports = {
  init: function () {

    this.events();
  },
  submit: function (e) {
    e.preventDefault();
    var user = {
      userName: $('#user-name').val(),
      userPwd: $('#user-pwd').val()
    };
    $.ajax({
      url: '/user',
      type: 'get',
      data: user,
      dataType: 'json',
      success: function (data) {
        console.log(data);
      }
    })
  },
  events: function () {
    $('#btn-login').on('click', this.submit);
  }
};
