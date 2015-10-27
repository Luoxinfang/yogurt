/**
 * @file YOG2 框架启动入口
 * @author fis@baidu.com
 */

'use strict';

var yog = require('yog2-kernel');

var app = yog.bootstrap({
	rootPath: __dirname
}, function () {
	console.log('plugins load completed');
});

/*------用户添加的设置------*/
/*var config = yog.require('common/config.js');*/
var channel = yog.require('common/lib/channel-api.js');
channel.init('rabbitMQ', {
	conn_options: {
		url: "amqp://it:its123@192.168.10.75:5672/test3",
		heartbeat: 10
	}
});

/*------end 用户添加的设置------*/

app.set('port', process.env.PORT || 3000);

var server = yog.server = app.listen(app.get('port'), function () {
	console.log('Yog server listening on port ' + server.address().port);
});

server.on('connection', function (socket) {
	// disable nagle
	socket.setNoDelay(true);
	// keep-alive timeout
	socket.setTimeout(60 * 1000);
});