operations
get: uri
	^ self
		signalRestCallInfoDuring: [ 
			self httpClient get: uri.
			self httpClient isSuccess
				ifTrue: [ self handleResponse ]
				ifFalse: [ self handleError ] ]