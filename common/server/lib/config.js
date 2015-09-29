'use strict';

var config = {
    // development production
    env: 'development',
    port: '80',
    redis: {host: '192.168.10.41', port: 6379},
    fileServer: {
        host: '192.168.10.50',
        port: '996'
    },
    expressSession: {
        key: 'sid',
        secret: 'SECRETwww.hizns.coM',
        resave: false,
        saveUninitialized: true,
        cookie: {domain: '.hzins.com'},
        redis: {host: '192.168.10.41', port: 6379, prefix: 'nodejs_sess:', ttl: 240000}
    },
    rabbitmq: {url: "amqp://it:its123@192.168.10.75:5672/test3", heartbeat: 10},
    rabbiqmqQueue: 'ap-pc-server-jk-test',
    numWorkers: 1,
    log4js: {
        appenders: [
            {
                type: 'console'
            },
            {
                type: "dateFile",
                filename: __dirname + '/logs/channel-ap-pc.log',
                pattern: "_yyyy-MM-dd",
                alwaysIncludePattern: false
            }
        ],
        replaceConsole: true,
        levels: {
            dateFileLog: 'DEBUG'
        }
    }
};

if (process.env.NODE_ENV) {
    config.env = process.env.NODE_ENV;
}

if (process.env.PORT) {
    config.port = process.env.PORT;
}

if (process.env.REDIS_HOST) {
    config.redis.host = process.env.REDIS_HOST;
    config.redis.port = process.env.REDIS_PORT;
    config.expressSession.redis.host = process.env.REDIS_HOST;
    config.expressSession.redis.port = process.env.REDIS_PORT;
}

if (process.env.FILESERVER_HOST) {
    config.fileServer.host = process.env.FILESERVER_HOST;
    config.fileServer.port = process.env.FILESERVER_PORT;
}

if (process.env.RABBITMQ_HOST) {
    config.rabbitmq.url = "amqp://" + process.env.RABBITMQ_USER + ":" + process.env.RABBITMQ_PWD + "@" + process.env.RABBITMQ_HOST + ":" + process.env.RABBITMQ_PORT + process.env.RABBITMQ_VIRTUAL_HOST;
    if (process.env.RABBIQMQ_QUEUE)
        config.rabbitmq.rabbiqmqQueue = process.env.RABBIQMQ_QUEUE;
}

module.exports = config;
