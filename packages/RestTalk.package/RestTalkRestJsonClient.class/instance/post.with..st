operations
post: uri with: data
	^ self
		signalRestCallInfoDuring: [ 
			self httpClient post: uri contents: data.
			self httpClient isSuccess
				ifTrue: [ self handlePutPostResponse ]
				ifFalse: [ self handleError ] ]