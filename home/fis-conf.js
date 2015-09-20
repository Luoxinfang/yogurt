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



//==================
//生产环境配置
fis.media('prod').match('*', {
  deploy: fis.plugin('http-push', {
    receiver: 'http://127.0.0.1:3000/yog/upload',
    to: '/'
  })
});

//static下面的资源全部加hash
fis.media('prod').match('/static/**.{css,less,scss,js}', {
  useHash: true
});

fis.match('::package', {
  packager: fis.plugin('map', {
    'pkg/all.js': [
      'static/css/!(global).css',
      'widget/!*.js'
    ]
  })
});

//把home模块每个页面单独适用的css压缩成对应的css [一个是static下面的css 一个是widget下面的css]
fis.media('prod').match('/client/{static/css/!(global).css,widget/$1/**.css}',{
  packTo: 'static/css/$1.css'
});


//把home模块公用的css压缩成base.css
fis.media('prod').match('/client/{widget/common/**/*.css,static/css/global.css}', {
  packTo: 'static/css/base.css'
});

