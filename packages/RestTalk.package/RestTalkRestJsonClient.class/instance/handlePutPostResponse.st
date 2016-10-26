private
handlePutPostResponse
	| response |
	response := self httpClient response.
	response isCreated ifTrue: [
		[ ^ response location ] on: KeyNotFound do: [ ] ].
	^ response hasEntity
		ifTrue: [ self handleResponse ]
		ifFalse: [ true ]