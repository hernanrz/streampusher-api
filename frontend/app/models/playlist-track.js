import DS from 'ember-data';

export default DS.Model.extend({
  podcastPublishedDate: DS.attr(),
  displayName: DS.attr(),
  title: DS.attr(),
  position: DS.attr(),
  position_position: DS.attr(),
  playlist: DS.belongsTo('playlist'),
  track: DS.belongsTo('track')
});
