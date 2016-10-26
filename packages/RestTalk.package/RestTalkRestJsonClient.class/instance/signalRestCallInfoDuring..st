private
signalRestCallInfoDuring: block
	| initialMilliseconds |
	initialMilliseconds := Time millisecondClockValue.
	^ block ensure: [ 
		RestTalkRestCallInfo new
			request: self httpClient request;
			response: self httpClient response;
			duration: (Time millisecondsSince: initialMilliseconds) milliSeconds;
			signal ]