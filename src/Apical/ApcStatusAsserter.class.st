Class {
	#name : #ApcStatusAsserter,
	#superclass : #ApcAsserter,
	#category : #'Apical-Asserter'
}

{ #category : #'public - testing status code' }
ApcStatusAsserter >> hasCode: aCode [
	assertions add: [ :resp | 
		self 
			assert: aCode = resp code 
			description: ('Status Code should be {1}, {2} given' format: {aCode. resp code})]
]

{ #category : #'public - testing status code' }
ApcStatusAsserter >> isAccepted [
	self hasCode: ZnStatusLine accepted code
]

{ #category : #'public - testing status code' }
ApcStatusAsserter >> isRedirect [
	assertions add: [ :resp | 
		self 
			assert: resp isRedirect
			description: ('Status Code should included in redirect codes {1}, {2} given' 
								format: {#(301 302 303 307). resp code })
		]
]

{ #category : #'public - testing status code' }
ApcStatusAsserter >> isSuccess [
	assertions add: [ :resp | 
		self 
			assert: resp isSuccess
			description: ('Status Code should included in success codes {1}, {2} given' 
								format: {#(200 201 202 204). resp code })
		]
]
