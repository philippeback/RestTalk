testing
isSafe: anOperation
	^ self safeMethods anySatisfy: anOperation asLowercase  