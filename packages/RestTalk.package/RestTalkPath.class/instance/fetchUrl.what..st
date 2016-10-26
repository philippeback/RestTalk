as yet unclassified
fetchUrl: current what: what

self shouldBeImplemented.
"
 Path.prototype.fetchUrl = function(current, what) {
      var baseUrl = this.base(current);
      if (what) {
        baseUrl += '/' + what;
      }
      return baseUrl;
    };
"