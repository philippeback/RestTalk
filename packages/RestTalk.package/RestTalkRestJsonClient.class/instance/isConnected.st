testing
isConnected
	^ httpClient notNil and: [ httpClient isConnected ]