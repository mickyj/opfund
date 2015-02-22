/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();


app.import('bower_components/bootstrap-sass-official/assets/javascripts/bootstrap.js');
var pickFiles = require('broccoli-static-compiler');
var bootstrapFonts = pickFiles('bower_components/bootstrap-sass-official/assets/fonts/bootstrap', {
    srcDir: '/',
    destDir: '/fonts'
});

module.exports = app.toTree(bootstrapFonts);
