private
handleError
	(self httpClient response contentType matches: ZnMimeType applicationJson)
		ifTrue: [ self signalRestException: self handleResponse ]
		ifFalse: [ RestTalkRestException new signal: 'REST call failed, unknown error' ]