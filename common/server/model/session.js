/**
 * @description the model for session
 * @author roy
 */

var channel = require('../lib/channel-api.js');
module.exports = {
  login: function (user) {
    var param = {
      loginAccount: user.userName,
      password: user.password
    };
    channel.login([param], function (data) {

    });
  }
};