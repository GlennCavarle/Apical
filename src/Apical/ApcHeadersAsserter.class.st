Class {
	#name : #ApcHeadersAsserter,
	#superclass : #ApcAsserter,
	#category : #'Apical-Asserter'
}

{ #category : #'public - testing content type' }
ApcHeadersAsserter >> hasContentType: anObject [
	assertions add: [ :resp | 
		self 
			assert: resp contentType = anObject asZnMimeType
			description: ('Content-Type should be "{1}", "{2}" given' 
								format:{anObject asZnMimeType. resp contentType}	)	
	]
]

{ #category : #'public - testing content type' }
ApcHeadersAsserter >> hasJsonContentType [
	self hasContentType: ZnMimeType applicationJson
]
