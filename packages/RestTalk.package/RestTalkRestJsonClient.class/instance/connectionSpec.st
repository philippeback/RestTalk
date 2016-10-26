accessing
connectionSpec
	connectionSpec isNil ifTrue: [ connectionSpec := self class defaultConnectionSpec copy ].
	^ connectionSpec