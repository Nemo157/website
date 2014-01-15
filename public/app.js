(function() {
  mixpanel.track("User Arrived", {
    uri: document.location.toString()
  });

  mixpanel.track_links("a", "User Left", {
    referrer: document.referrer
  });

  ga('create', 'UA-47168520-1', 'nemo157.com');

  ga('send', 'pageview');

}).call(this);
