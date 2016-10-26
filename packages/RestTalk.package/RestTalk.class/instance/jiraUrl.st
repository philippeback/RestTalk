accessing
jiraUrl
	^ enpointUrl ifNil: [ self defaultJiraUrl ]
	