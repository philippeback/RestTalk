accessing
defaultConnectionSpec
	DefaultConnectionSpec ifNil: [ self error: 'Please set up a default connection spec' ].
	^ DefaultConnectionSpec