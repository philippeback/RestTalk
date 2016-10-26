operations
put: uri with: data
	^ self
		signalRestCallInfoDuring: [ 
			self httpClient put: uri contents: data.
			self httpClient isSuccess
				ifTrue: [ self handlePutPostResponse ]
				ifFalse: [ self handleError ] ]