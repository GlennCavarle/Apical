Class {
	#name : #ApcAuthSpec,
	#superclass : #ApcRequestSpec,
	#instVars : [
		'askAuth',
		'znHeaders',
		'headersSpec'
	],
	#category : #'Apical-Spec'
}

{ #category : #private }
ApcAuthSpec >> applyOnRequest: aZnRequest [
	askAuth ifTrue: [
		self buildAuthUsingResponse: (ZnClient new request: aZnRequest;execute;response) 
	].
					
	aZnRequest headers addAll: znHeaders
]

{ #category : #public }
ApcAuthSpec >> askAuth [
	askAuth := true
]

{ #category : #accessing }
ApcAuthSpec >> askAuthNeeded [
	^ askAuth
]

{ #category : #public }
ApcAuthSpec >> basicUsername: username password: password [
	headersSpec authorization: 'Basic ' , (ZnUtils encodeBase64: username , ':' , password)
]

{ #category : #private }
ApcAuthSpec >> buildAuthUsingResponse: aZnResponse [
]

{ #category : #public }
ApcAuthSpec >> digestUsername: username password: password realm: realm nonce: nonce opaque: opaque [
	
	self shouldBeImplemented. 
	headersSpec authorization: (String streamContents: [ :stream | 
					stream
						nextPutAll: 'Digest';
						nextPutAll: String space;
						nextPutAll: ('username="{1}"' format: {username});
						nextPutAll: String space;
						nextPutAll: ('realm="{1}" ' format: {realm});
						nextPutAll: String space;
						nextPutAll: ('nonce="{1}" ' format: {nonce});
						nextPutAll: String space;
						nextPutAll: ('opaque="{1}" ' format: {opaque}) ])
]

{ #category : #accessing }
ApcAuthSpec >> headers [
	^ znHeaders 
]

{ #category : #initialization }
ApcAuthSpec >> initialize [
	super initialize.
	askAuth := false. "preemptive auth by default"
	znHeaders := ZnHeaders new.
	headersSpec := ApcHeadersSpec new.
]

{ #category : #public }
ApcAuthSpec >> oauth2AccessToken: anAccessToken [
	headersSpec authorization: 'Bearer ' , anAccessToken
]

{ #category : #composing }
ApcAuthSpec >> use: anAuthSpec [
	askAuth := askAuth or:[anAuthSpec askAuthNeeded].
	znHeaders addAll: anAuthSpec headers
]
