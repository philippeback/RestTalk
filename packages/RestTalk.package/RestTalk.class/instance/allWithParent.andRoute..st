resttalk-protocol
allWithParent: parent andRoute: route

self shouldBeImplemented.
"
function all(parent, route) {
        return restangularizeCollection(parent, [] , route, false);
      }
"