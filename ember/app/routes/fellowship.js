import Ember from 'ember';

export default Ember.Route.extend({
  		model: function(params) { 
  			return this.store.find('Fellowship', params.fellowship_id);
  }
 
});
