"use strict";

let async = require('async');
let db = require('./db');

let Releases = module.exports = {};

Releases.add = function (newRelease, done){

	async.waterfall([
		(cb) => {
			Releases.validate(newRelease, cb);
		},
		(validated, cb) => {
			if(!validated)
				return done(new Error("new release does not validate"));
			cb();
		}],
		(err, result) => {
			if(err)
				return done(err);
			return done(null, result);
		});
};

Releases.validate = function (release, done){

};
