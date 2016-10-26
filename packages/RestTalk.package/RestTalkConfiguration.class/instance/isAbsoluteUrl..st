testing
isAbsoluteUrl: aString

	"(configuration at: #absoluteUrl) isNil "
	^ absoluteUrl isNil or: [ absoluteUrl prefixMatchesRegexIgnoringCase: 	'^https?\:\/\/' ]
