/**
 * @description
 * @author roy
 */

module.exports = {
	login: function (user, callback) {
		var rs = {
			status: '00000'
		};
		if (user.userName != '7411') {
			rs = {
				status: '11111',
				exception: '用户不存在'
			};
		} else if (user.password != '123'){
			rs = {
				status: '11112',
				exception: '密码错误'
			};
		}
		callback(rs);
	}
};