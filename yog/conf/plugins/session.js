var config = yog.require('common/config.js');
/*var session = require('express-session');
var RedisStore = require('connect-redis')(session);*/

//console.log('RedisStore',RedisStore);
module.exports.session = {
	store: '',
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
