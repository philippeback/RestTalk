operations
delete: uri
	^ self
		signalRestCallInfoDuring: [ 
			self httpClient delete: uri.
			self httpClient isSuccess
				ifTrue: [ true ]
				ifFalse: [ self handleError ] ]