/**
 * Created by luoxinfang on 15/9/5.
 */
module.exports = function(req, res){
  res.send('user index');
};
//login
module.exports.get = function(req, res, next){
  console.log(req.body);
};
//
module.exports.post = function(req, res, next){


};

module.exports.put = function(req, res, next){

};

module.exports.delete = function(req, res, next){

};