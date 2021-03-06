/**
 * @file FIS 配置
 * @author roy
 */
fis.config.set('namespace', 'home');
//设置git目录下面的文件是不解析
fis.set('project.ignore', [
  '.git/**'
]);
// chrome下可以安装插件实现livereload功能
fis.config.set('livereload.port', 35729);

fis.media('debug').match('*', {
  optimizer: null,
  useHash: false,
  deploy: fis.plugin('http-push', {
    receiver: 'http://127.0.0.1:3000/yog/upload',
    to: '/'
  })
});

// 启用 fis-spriter-csssprites 插件
fis.match('::package', {
  spriter: fis.plugin('csssprites')
});
fis.config.set('settings.spriter.csssprites', {
  //图之间的边距
  margin: 0,
  //使用矩阵排列方式，默认为线性`linear`
  layout: 'matrix'
});

//==================生产环境配置==================
fis.media('prod').match('*', {
  deploy: fis.plugin('http-push', {
    receiver: 'http://127.0.0.1:3000/yog/upload',
    to: '/'
  })
});
//对tpl文件进行优化
fis.media('prod').match('/**.tpl', {
  optimizer: fis.plugin('tpl')
});
//把对应的模块的js和css合并
fis.media('prod').match('widget/(*)/**.js', {
  packTo: 'static/js/$1.js'
});
fis.media('prod').match('widget/(*)/**.css', {
  packTo: 'static/css/$1.css'
});