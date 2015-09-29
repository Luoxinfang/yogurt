/**
 * Created by roy on 2015/9/29.
 * @author roy
 * @route session
 */

module.exports = function (req, res, next) {
  console.log('session module');
  next();
};
//
module.exports.get = function (req, res, next) {
  //console.log(req.param('userName'));
  res.json({
    status:'00000'
  });
};
//
module.exports.post = function (req, res, next) {
  console.log(req.param('userName'));
  res.json({
    status:'00000'
  });
};

module.exports.put = function (req, res, next) {

};

module.exports.delete = function (req, res, next) {

};