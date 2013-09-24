(function() {
  mixpanel.track("User Arrived", {
    uri: document.location.toString()
  });

  mixpanel.track_links("a", "User Left", {
    referrer: document.referrer
  });

}).call(this);
