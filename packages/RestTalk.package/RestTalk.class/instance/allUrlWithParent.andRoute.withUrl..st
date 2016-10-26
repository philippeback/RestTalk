resttalk-protocol
allUrlWithParent: parent andRoute: route withUrl: anUrl


	self shouldBeImplemented.
	
	"
function allUrl(parent, route, url) {
        if (!route) {
          throw new Error('Route is mandatory when creating new Restangular objects.');
        }
        var elem = {};
        config.setUrlToElem(elem, url, route);
        return restangularizeCollection(parent, elem , route, false);
      }
	"
