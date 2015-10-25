/**
 * @author roy
 * @description 这个路由处理session 如登陆 退出等
 */


var model = yog.require('common/lib/loader-model.js')();


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
	var user = req.body;
	if (req.session.login_error_times >= 2) {
		//如果验证码不正确 就此拦截住
		if (req.session.captcha && req.session.captcha !== user.captcha.toLowerCase()) {
			res.json({
				status: '00001',
				exception: '验证码错误'
			});
		}
	} else {
		//将数据传递给模型处理
		model.login(user, function (rs) {
			res.json(rs);
		});
	}
};

module.exports.put = function (req, res, next) {

};

module.exports.delete = function (req, res, next) {

};