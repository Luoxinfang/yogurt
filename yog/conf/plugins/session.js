

var config = yog.require('common/config.js');


module.exports.session = {
	store: config.expressSession.redis,
	key: config.expressSession.key,
	secret: config.expressSession.secret,
	resave: config.expressSession.resave,
	saveUninitialized: config.expressSession.saveUninitialized,
	cookie: config.expressSession.cookie
};

/*
这里我们不在需要使用cookieParser
module.exports.cookieParser = {
	secret: 'yog'
};
*/
