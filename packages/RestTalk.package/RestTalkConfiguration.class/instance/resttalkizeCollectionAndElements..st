resttalk-protocol
resttalkizeCollectionAndElements: params

self shouldBeImplemented.

"
 function restangularizeCollectionAndElements(parent, element, route) {
        var collection = restangularizeCollection(parent, element, route, false);
        _.each(collection, function(elem) {
          if (elem) {
            restangularizeElem(parent, elem, route, false);
          }
        });
        return collection;
      }
"