accessing
defaultJiraUrl
	"e.g. https://<client>.jira.com/rest/api/"
	^ self environmentVariableNamed: #RESTTALK_URL
	
	