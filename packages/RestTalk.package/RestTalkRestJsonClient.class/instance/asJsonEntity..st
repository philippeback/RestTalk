private
asJsonEntity: data
	^ ZnEntity 
		with: (RestTalkJson toString: data) 
		type: ZnMimeType applicationJson  