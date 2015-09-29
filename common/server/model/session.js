/**
 * @description the model for session
 * @author roy
 */

var channel = require('../lib/channel-api.js');
module.exports = {
	login: function (user) {

		channel.login([{loginAccount: req.body.userName, password: req.body.password}], function (data) {
			if (data.status == '00000') {
				//登陆成功 将user对象写入我们的user类和session
				//console.log('user login:\n', data);
				ses.user = data.result;
				ses.partnerId = data.result.partnerId;
				ses.login_error_times = 0;
				user.data = data.result;
				user.data.domain = user.data.domain || user.data.partnerId;
				res.cookie('user_info', JSON.stringify(user.data), {httpOnly: false});
				res.cookie('login_error_times', ses.login_error_times, {maxAge: 30 * 60 * 1000, httpOnly: false});
			} else {
				//登陆失败 将失败的次数写入session
				if (ses.login_error_times) {
					ses.login_error_times++;
				} else {
					ses.login_error_times = 1;
				}
				res.cookie('login_error_times', ses.login_error_times, {maxAge: 30 * 60 * 1000, httpOnly: false});
			}
			//console.log('user module post:', ses.user);
			res.jsonp(data);
		});
	}
};