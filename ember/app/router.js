import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('fellows', function() {
	this.resource('fellow', {path: '/:fellow_id'});
	});
  this.resource('fellowships', function() {
  	this.resource('fellowship', {path: '/:fellowship_id'});	
  });
});

export default Router;
