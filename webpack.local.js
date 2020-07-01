
var _conf = {
	org:'bi4.me',
	host:'crm.bi4.me',
	ip:'192.168.178.49',
    key:  '../mkcert/192.168.178.49-key.pem',
	cert: '../mkcert/192.168.178.49.pem'
};

module.exports = function(env){
	for(p in env){
		if(p.indexOf('npm_config_app_')==-1)
		{
			continue;
		}
		_conf[p.substr(15)] = env[p];
	}
	//console.log(conf);
	return _conf;
};