"use strict";
let pg 	 = require('pg');

let client = new pg.Client({
    user: "lkgazcowovcbhc",
    password: "1Fz2fkgJbFGgfcb_NWvhYP7196",
    database: "d4lupro73571ru",
    port: 5432,
    host: "ec2-54-225-121-179.compute-1.amazonaws.com",
    ssl: true
});

let db = module.exports = {};

db.connect = function(done){
	client.connect((err, client) => {
		if(err)
			return done(err);
		done(null, client, client.end);
	});
};



