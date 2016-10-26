private
parseJson: entity
	entity ifNil: [ ^ nil ].
	^ entity isEmpty 
		ifFalse: [ RestTalkJson parseString: entity contents ]