/**
 * @description init channel whit rabbitMQ
 */
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