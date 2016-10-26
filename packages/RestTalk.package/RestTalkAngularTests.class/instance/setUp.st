running
setUp

	configuration := RestTalkConfiguration new.
	configuration
		absoluteUrl: 'http://127.0.0.1:1234';
		username: 'blah';
		password: 'blah'.
		
	configurer := RestTalkConfigurer new.

	configurer at: #accounts put: configuration.
	
	resttalk := RestTalk new;
					configurer: configurer;
					yourself.
					
					
	