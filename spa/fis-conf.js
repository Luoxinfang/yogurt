fis.config.set('namespace', 'spa');

// chrome下可以安装插件实现livereload功能
// https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei
fis.config.set('livereload.port', 35729);

fis.media('debug').match('*', {
  optimizer: null,
  useHash: false,
  deploy: fis.plugin('http-push', {
    receiver: 'http://127.0.0.1:3000/yog/upload',
    to: '/'
  })
});
fis.media('prod').match('*', {
  deploy: fis.plugin('http-push', {
    receiver: 'http://127.0.0.1:3000/yog/upload',
    to: '/'
  })
});
