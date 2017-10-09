#!/usr/bin/env node

var exec = require('child_process').exec

exec('bundle exec nanoc compile', function (error, stdout, stderr) {
  if (error) { console.log('error: ' + error); }
  if (stdout) { console.log('stdout: ' + stdout); }
  if (stderr) { console.log('stderr: ' + stderr); }
});