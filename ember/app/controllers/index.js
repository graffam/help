import Ember from 'ember';

export default Ember.Controller.extend({
  siteTitle: "Welcome to DJ TechTools Help",

  currentTime: function() {
    return(new Date());
  }.property()
});
