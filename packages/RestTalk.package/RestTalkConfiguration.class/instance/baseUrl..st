accessing-parameters
baseUrl: aStringThatCanPossiblyBePrefixedByHttp
	| matcher |
	
	" /**
     * This is the BaseURL to be used with Restangular
     */
    config.baseUrl = _.isUndefined(config.baseUrl) ? '' : config.baseUrl;
    object.setBaseUrl = function(newBaseUrl) {
      config.baseUrl = /\/$/.test(newBaseUrl) ?
        newBaseUrl.substring(0, newBaseUrl.length-1) :
        newBaseUrl;
      return this;
    };"
	self shouldBeImplemented.
	
	
	"matcher := RxMatcher forString: '\$':"