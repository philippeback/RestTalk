accessing
httpClient
	httpClient ifNil: [ httpClient := self setUpHttpClient ].
	httpClient username: self connectionSpec username password: self connectionSpec password.
	^ httpClient