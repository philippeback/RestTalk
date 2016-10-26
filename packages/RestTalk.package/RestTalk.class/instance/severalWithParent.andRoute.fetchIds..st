resttalk-protocol
severalWithParent: parent andRoute: route fetchIds: anArrayOfIds

	self shouldBeImplemented.
	
	"
	function several(parent, route /*, ids */) {
        var collection = [];
        collection[config.restangularFields.ids] = Array.prototype.splice.call(arguments, 2);
        return restangularizeCollection(parent, collection , route, false);
      }
	"
