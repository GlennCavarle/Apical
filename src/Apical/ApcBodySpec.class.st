Class {
	#name : #ApcBodySpec,
	#superclass : #ApcRequestSpec,
	#instVars : [
		'bodyParameters',
		'bodyCharSet'
	],
	#category : #'Apical-Spec'
}

{ #category : #private }
ApcBodySpec >> applyOnRequest: aZnRequest [
	|entity mimetype|
	"entity := (ZnEntity concreteSubclassForType: aZnRequest contentType binary: false) new.
	entity := ZnStringEntity type: aZnRequest contentType.
	mimetype := aZnRequest contentType.
	
	(aZnRequest contentType = ZnMimeType applicationJson) 
		ifTrue:[entity string: (NeoJSONWriter toString: bodyParameters)].
	
	(aZnRequest contentType = ZnMimeType applicationFormUrlEncoded) 
		ifTrue:[
			entity string: (String streamContents: [:stream |
				(ZnResourceMetaUtils writeQueryFields: bodyParameters on: 	stream)])
			 ].
		"
	"entity contentType: ZnMimeType textPlain.
	entity contentType charSet: bodyCharSet.
	
	aZnRequest entity: entity.
	aZnRequest headers contentType: mimetype."
]

{ #category : #public }
ApcBodySpec >> at: aKey put: aValue [
	bodyParameters at: aKey put: aValue
]

{ #category : #public }
ApcBodySpec >> charSet: aCharSet [
	bodyCharSet := aCharSet
]

{ #category : #initialization }
ApcBodySpec >> initialize [
	super initialize.
	bodyCharSet :='utf-8'.
	bodyParameters := Dictionary new
]

{ #category : #composing }
ApcBodySpec >> use: aBodySpec [
	
]
