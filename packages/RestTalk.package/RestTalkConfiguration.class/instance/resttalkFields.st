accessing
resttalkFields

	resttalkFields ifNil: [ 
		
		| defaultFields |
		
		defaultFields := #(
		#id 'id'
		#route 'route'
		#parentResource 'parentResource'
		#resttalkCollection 'resttalkCollection''
		#canonicalId '__canonicalId'
		#etag  'resttalkEtag'
		#selfLink 'href'
      	#get 'get'
      	#getList 'getList'
      	#put 'put'
      	#post 'post'
		#remove 'remove'
      	#head 'head'
      	#trace 'trace'
      	#options 'options'
      	#patch 'patch'
      	#getResttalkUrl 'getResttalkUrl'
      	#getRequestedUrl 'getRequestedUrl'
      	#putElement 'putElement'
      	#addResttalkMethod 'addResttalkMethod'
      	#getParentList 'getParentList'
      	#clone 'clone'
      	#ids 'ids'
     	#httpConfig '_$httpConfig'
      	#reqParams 'reqParams'
      	#one 'one'
      	#all 'all'
      	#several 'several'
      	#oneUrl 'oneUrl'
      	#allUrl 'allUrl'
      	#customPUT 'customPUT'
      	#customPATCH 'customPATCH'
      	#customPOST 'customPOST'
      	#customDELETE 'customDELETE'
      	#customGET 'customGET'
      	#customGETLIST 'customGETLIST'
      	#customOperation 'customOperation'
      	#doPUT 'doPUT'
      	#doPATCH 'doPATCH'
      	#doPOST 'doPOST'
      	#doDELETE 'doDELETE'
      	#doGET 'doGET'
      	#doGETLIST 'doGETLIST'
      	#fromServer 'fromServer'
      	#withConfig 'withConfig'
     	#withHttpConfig 'withHttpConfig'
      	#singleOne 'singleOne'
      	#plain 'plain'
      	#save 'save'
      	#resttalked 'resttalked).
	
 		resttalkFields := Dictionary newFromPairs:defaultFields.
		 ].
	^ resttalkFields 	