/**
 * @description the model for session
 * @author roy
 */

var channel = require('../lib/channel-api.js');
module.exports = {
	login: function (user, callback) {
		var param = {
			loginAccount: user.userName,
			password: user.password
		};
		channel.login([param], function (rs) {
			console.log('rs:',rs);
			callback(rs);
		});
	}
};