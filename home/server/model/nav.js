/**
 * @description return the navigation list for home module
 *
 */
module.exports = function (url) {
  //copy nav
  var nav = JSON.parse(JSON.stringify(require('../data/nav.json')));
  //flag the current item (will return when find it)
  nav.some(function (item, i) {
    //console.log(url === item.href);
    if (url === item.href) {
      nav[i]['current'] = true;
      return true;
    }
    
  });
  return nav;
};