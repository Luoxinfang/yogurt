/**
 * @author roy
 * @description 这个路由处理session 如登陆 退出等
 */
var model = require('../model/session.js');
module.exports = function (req, res, next) {

	next();
};
//
module.exports.get = function (req, res, next) {
	//console.log(req.param('userName'));
	res.json({
		status: '00000'
	});
};
//login
module.exports.post = function (req, res, next) {
	var data = {};
	console.log(req);
	if (req.session.login_error_times >= 2) {
		//如果验证码不正确 就此拦截住
		if (req.session.captcha && req.session.captcha !== req.body.captcha.toLowerCase()) {
			data = {
				status: '00001',
				exception: '验证码错误'
			};
		}
	} else {
		data = model.login();
	}


};

module.exports.put = function (req, res, next) {

};

module.exports.delete = function (req, res, next) {

};