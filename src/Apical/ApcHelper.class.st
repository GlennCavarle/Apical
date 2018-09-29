Class {
	#name : #ApcHelper,
	#superclass : #Object,
	#category : #'Apical-Core'
}

{ #category : #'as yet unclassified' }
ApcHelper class >> jsonFrom: aZnResponse [
	^ NeoJSONReader fromString: aZnResponse contents
]

{ #category : #'as yet unclassified' }
ApcHelper class >> oauth2AccessTokenFrom: aZnResponse [
	
	| data errorMsg|
	errorMsg := 'Wrong json content, "access_token" key not found'.
	data  := (self jsonFrom: aZnResponse).
	self 
		assert: data isDictionary 
		description:errorMsg.
	
	^  data at: 'access_token' ifAbsent:[
			Error signal: errorMsg
		]
]
