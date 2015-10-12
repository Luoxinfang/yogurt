/**
 * @file FIS 配置
 * @author
 */

fis.config.set('namespace', 'common');
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


//将hz下面我们自己的js模块化
fis.match('/client/js/{hz-lib,hz-plugin}/**.js', {
  isMod: true
});


// 启用 fis-spriter-csssprites 插件
fis.match('::package', {
  spriter: fis.plugin('csssprites')
});
fis.config.set('settings.spriter.csssprites', {
  //开启模板内联css处理,默认关闭
  htmlUseSprite: true,
  //图之间的边距
  margin: 0,
  //使用矩阵排列方式，默认为线性`linear`
  layout: 'matrix'
});


//生产环境设置
fis.media('prod').match('*', {
  deploy: fis.plugin('http-push', {
    receiver: 'http://127.0.0.1:3000/yog/upload',
    to: '/'
  })
});
//static下面的资源全部加hash
fis.media('prod').match('client/**.{css,js}', {
  useHash: true
});

//把common模块公用的css压缩成global.css
fis.media('prod').match('client/**.css', {
  packTo: 'client/css/global.css'
});
//把common模块公用的js压缩成lib.js
fis.media('prod').match('client/js/{lib,plugin}/*.js', {
  packTo: 'client/js/lib.js'
});
fis.media('prod').match('client/js/{hz-lib,hz-plugin}/*.js', {
	packTo: 'client/js/hz.js'
});


//cdn设置
/**
fis.match('/client/js/!*.js', {
  domain: '//cdn.hzins.com'
});
*/
