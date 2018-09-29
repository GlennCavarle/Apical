Class {
	#name : #ApcUriSpec,
	#superclass : #ApcRequestSpec,
	#instVars : [
		'queryParams',
		'pathParams'
	],
	#category : #'Apical-Spec'
}

{ #category : #private }
ApcUriSpec >> applyOnRequest: aZnRequest [
	aZnRequest url: (aZnRequest uri asString format: pathParams).
	queryParams keysAndValuesDo: [ :k :v | aZnRequest uri queryAt: k put: v ].
	
]

{ #category : #initialization }
ApcUriSpec >> initialize [
	super initialize.
	queryParams := Dictionary new.
	pathParams := Dictionary new
]

{ #category : #public }
ApcUriSpec >> pathAt: aKey put: aValue [
	pathParams at: aKey put: aValue
]

{ #category : #public }
ApcUriSpec >> queryAt: aKey put: aValue [
	queryParams at: aKey put: aValue
]
