"use strict";

let async = require('async');
let db = require('./db');

let Artists = module.exports = {};

Artists.add = function (newArtist, done){

	async.waterfall([
		(cb) => {
			Artists.validate(newArtist, cb);
		},
		(validated, cb) => {
			if(!validated)
				return done(new Error("new artist does not validate"));
			cb();
		}],
		(err, result) => {
			if(err)
				return done(err);
			return done(null, result);
		});
};

Artists.validate = function (release, done){

};
