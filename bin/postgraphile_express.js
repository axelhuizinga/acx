const express = require("express");
//const x509 = require('x509');
const { postgraphile } = require("postgraphile");
const ConnectionFilterPlugin = require("postgraphile-plugin-connection-filter");

const postgraphileOptions = {
	appendPlugins: [ConnectionFilterPlugin],
	subscriptions: true,
	watchPg: true,
	dynamicJson: true,
	setofFunctionsContainNulls: false,
	ignoreRBAC: false,
	ignoreIndexes: false,
	showErrorStack: "json",
	extendedErrors: ["hint", "detail", "errcode"],
	//appendPlugins: [require("@graphile-contrib/pg-simplify-inflector")],
	exportGqlSchemaPath: "schema.graphql",
	graphiql: true,
	enhanceGraphiql: true,
	allowExplain(req) {
	  // TODO: customise condition!
	  return true;
	},
	enableQueryBatching: true,
	legacyRelations: "omit",
	pgSettings(req) {
	  /* TODO */
	},
	retryOnInitFail:true,
  };
const app = express();


//app.use(cors({origin:true,credentials: true}));
app.use(function(req, res, next) {
	res.header("Access-Control-Allow-Origin", req.headers.origin); // update to match the domain you will make the request from
	res.header("Access-Control-Allow-Credentials", true);
	res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
	console.log(req.method);
//	var cert = x509.parseCert(req.headers.x509);
//	console.log(cert);
	if(req.method=='OPTIONS')
	{
		res.sendStatus(200);
	}
	else {
		console.log(req.headers);
		next();
	}
  });
  

app.use(
  postgraphile(
    //process.env.DATABASE_URL || "dev://devop:newAge_§8_@localhost:5433/dev",
    process.env.DATABASE_URL || "postgres:///dev?host=/var/run/postgresql",
    ["crm","public"],
    postgraphileOptions
  )
);

app.listen(process.env.PORT || 888);
/*
var server;
server = http.createServer(function(req,res){
	// Set CORS headers
	res.setHeader('Access-Control-Allow-Origin', '*');
	res.setHeader('Access-Control-Request-Method', '*');
	res.setHeader('Access-Control-Allow-Methods', 'OPTIONS, GET');
	res.setHeader('Access-Control-Allow-Headers', req.headers.origin);
	if ( req.method === 'OPTIONS' ) {
		res.writeHead(200);
		res.end();
		return;
	}

	// ...
});*/