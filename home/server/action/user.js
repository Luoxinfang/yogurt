/**
 * Created by luoxinfang on 15/9/5.
 */
module.exports = function (req, res, next) {
  req.channel = 'no-info';
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
  //console.log(req.param('userName'));
  res.json({
    status:'00000'
  });
};

module.exports.put = function (req, res, next) {

};

module.exports.delete = function (req, res, next) {

};