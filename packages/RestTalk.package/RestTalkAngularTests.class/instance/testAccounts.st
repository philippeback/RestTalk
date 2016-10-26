testing
testAccounts

	| element collection collectionSample resttalkizedCollection resstalkPlaces resttalkPlaces resttalkAccounts |
	resttalkAccounts := resttalk all: #accounts.
	resttalk one: #accounts id: 0.
	resttalk one: #accounts id: 1.
	resttalk one: #accounts id: 0.
	
	resttalk all: #accounts.
	
	resttalk extendModel: #accounts with: [ :each | each at: #extension1 put: [ :account | account at: #extended put: [ :in | true ] ] ].
	
	resttalk resttalkizeElement: element.
	
	(resttalk configurer configurationOfObject: #account) requestSuffix: ':json'.
	
	collection := resttalk all: #accounts.
	
	collection getList.
	collection get: '1'.
	
	resttalk one: #accounts with: 1.
	
	(resttalk all: #accounts) getList.
	

	(resttalk configurer configurationOfObject: #account) post: '{id:2, user: "someone"}'.
	
	collectionSample := Collection new.
	
	resttalkizedCollection := resttalk resttalkize: collectionSample.
	
	resttalkizedCollection getRestTalkUrl.
	(resttalkizedCollection at: 1) getRestTalkUrl.
	
	((resttalk all: #places) 
		post: '[{name: ''gonto''}, { name: ''John'' } ]') then: [ :res |  self halt].
		
	resttalkPlaces := resttalk configurationOfObject: #places.
	
	(resttalkPlaces post: '....') onSuccessDo: [:added | added remove ];
									onFailureDo: [ :res |  ].
									

	resttalkAccounts := resttalk configurationOfObject: #accounts.
	
	resttalkAccounts customPost: '{}'.
	
	
	
	

									
	
	
	
	
	
	
	
	
	
	
		
	
	
	
	resttalk 
	
	
	
	
	