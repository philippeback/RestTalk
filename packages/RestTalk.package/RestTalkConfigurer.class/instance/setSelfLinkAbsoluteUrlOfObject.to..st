accessing
setSelfLinkAbsoluteUrlOfObject: anObject to: anUrlString
	(self configurationOfObject: anObject) 
		ifNotNil: [ :configuration | configuration absoluteUrl: anUrlString]
		ifNil: [ self signalError: 'Cannot find configuration of ', anObject asString ]