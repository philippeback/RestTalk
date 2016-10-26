resttalk-protocol
addResttalkMethodFunction: params

"
  function addRestangularMethodFunction(name, operation, path, defaultParams, defaultHeaders, defaultElem) {
        var bindedFunction;
        if (operation === 'getList') {
          bindedFunction = _.bind(fetchFunction, this, path);
        } else {
          bindedFunction = _.bind(customFunction, this, operation, path);
        }

        var createdFunction = function(params, headers, elem) {
          var callParams = _.defaults({
            params: params,
            headers: headers,
            elem: elem
          }, {
            params: defaultParams,
            headers: defaultHeaders,
            elem: defaultElem
          });
          return bindedFunction(callParams.params, callParams.headers, callParams.elem);
        };

        if (config.isSafe(operation)) {
          this[name] = createdFunction;
        } else {
          this[name] = function(elem, params, headers) {
            return createdFunction(params, headers, elem);
          };
        }
      }
"