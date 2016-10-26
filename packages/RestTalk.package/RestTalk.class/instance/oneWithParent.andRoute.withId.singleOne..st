resttalk-protocol
oneWithParent: parent andRoute: route withId: id  singleOne: singleOne

self shouldBeImplemented.
 "function one(parent, route, id, singleOne) {
        var error;
        if (_.isNumber(route) || _.isNumber(parent)) {
          error = 'You\'re creating a Restangular entity with the number ';
          error += 'instead of the route or the parent. For example, you can\'t call .one(12).';
          throw new Error(error);
        }
        if (_.isUndefined(route)) {
          error = 'You\'re creating a Restangular entity either without the path. ';
          error += 'For example you can\'t call .one(). Please check if your arguments are valid.';
          throw new Error(error);
        }
        var elem = {};
        config.setIdToElem(elem, id, route);
        config.setFieldToElem(config.restangularFields.singleOne, elem, singleOne);
        return restangularizeElem(parent, elem , route, false);
      }"