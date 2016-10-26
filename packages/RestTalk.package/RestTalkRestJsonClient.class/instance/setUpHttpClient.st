private
setUpHttpClient
	^ ZnClient new
		clientId: 'T3clnt';
		host: self connectionSpec host;
		port: self connectionSpec port;
		accept: ZnMimeType applicationJson;
		logLevel: 2;
		enforceAcceptContentType: true;
		autoResetEntityMethods: #(#HEAD #DELETE #GET);
		contentReader: [ :entity | self parseJson: entity ];
		contentWriter: [ :data | self asJsonEntity: data ];
		yourself