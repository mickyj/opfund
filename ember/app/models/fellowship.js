import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  fellowId: DS.attr('number'),
  fellow: DS.hasMany('fellow', {async: true}),
});
