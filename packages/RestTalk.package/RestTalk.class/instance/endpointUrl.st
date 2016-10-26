accessing
endpointUrl
	^ enpointUrl ifNil: [ self defaultJiraUrl ]
	