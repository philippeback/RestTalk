resttalk-protocol
oneUrlWithParent: parent andRoute: route withUrl: anUrl


	self shouldBeImplemented.
	
	"
 function oneUrl(parent, route, url) {
        if (!route) {
          throw new Error('Route is mandatory when creating new Restangular objects.');
        }
        var elem = {};
        config.setUrlToElem(elem, url, route);
        return restangularizeElem(parent, elem , route, false);
      }	"
