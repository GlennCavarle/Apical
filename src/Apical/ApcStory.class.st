Class {
	#name : #ApcStory,
	#superclass : #ApcItem,
	#instVars : [
		'given',
		'then',
		'when',
		'znRequest',
		'znResponse',
		'baseUri',
		'givenNext',
		'givenNextAll',
		'httpClient',
		'requestClass'
	],
	#category : #'Apical-Core'
}

{ #category : #'as yet unclassified' }
ApcStory class >> defaultHttpClient [
	^ ZnClient new
]

{ #category : #'as yet unclassified' }
ApcStory class >> defaultRequestClass [
	^ ZnRequest
]

{ #category : #accessing }
ApcStory >> baseUri [
	^ baseUri 
]

{ #category : #accessing }
ApcStory >> baseUri: anUri [
	baseUri := anUri 
]

{ #category : #execute }
ApcStory >> execute [
	self
		executeRequest;
		executeTests
]

{ #category : #execute }
ApcStory >> executeRequest [
	znRequest := self requestClass new
		requestLine: ZnRequestLine empty;
		headers: ZnHeaders new;
		url: baseUri;
		yourself.

	given applyOnRequest: znRequest.
	when applyOnRequest: znRequest.
	
	"(String streamContents:[:stream| znRequest writeOn: stream]) logCr."
	
	znResponse := self httpClient
		request: znRequest;
		execute;
		response
]

{ #category : #execute }
ApcStory >> executeTests [
	then applyOnResponse: znResponse
]

{ #category : #'public - scripting' }
ApcStory >> given: aGivenBlock [
	
	aGivenBlock value: given
]

{ #category : #'public - scripting' }
ApcStory >> given: aGivenBlock when: aWhenBlock then: aThenBlock [
	self
		given: aGivenBlock;
		when: aWhenBlock;
		then: aThenBlock
]

{ #category : #accessing }
ApcStory >> givenNext [
	^ givenNext 
]

{ #category : #'public - scripting' }
ApcStory >> givenNext: aGivenBlock [
	
	givenNext := aGivenBlock
]

{ #category : #accessing }
ApcStory >> givenNextAll [
	^ givenNextAll
]

{ #category : #'public - scripting' }
ApcStory >> givenNextAll: aGivenBlock [
	givenNextAll := aGivenBlock
]

{ #category : #accessing }
ApcStory >> httpClient [
	^ httpClient ifNil: [ httpClient := self class defaultHttpClient ]
]

{ #category : #accessing }
ApcStory >> httpClient: anHttpClient [
	httpClient := anHttpClient
]

{ #category : #initialization }
ApcStory >> initialize [
	super initialize.
	baseUri := String empty.
	given := ApcStoryGiven new.
	when := ApcStoryWhen new.
	then := ApcStoryThen new.
]

{ #category : #accessing }
ApcStory >> request [
	^ znRequest 
]

{ #category : #accessing }
ApcStory >> requestClass [
	^ requestClass ifNil: [ requestClass := self class defaultRequestClass ]
]

{ #category : #accessing }
ApcStory >> requestClass: anObject [
	requestClass := anObject
]

{ #category : #accessing }
ApcStory >> response [
	^ znResponse 
]

{ #category : #'public - scripting' }
ApcStory >> then: aThenBlock [
	
	aThenBlock value: then.
]

{ #category : #composing }
ApcStory >> useGiven: anApcGiven [
	given := anApcGiven
]

{ #category : #composing }
ApcStory >> useThen: anApcThen [
	then := anApcThen
]

{ #category : #composing }
ApcStory >> useWen: anApcWhen [
	when := anApcWhen
]

{ #category : #'public - scripting' }
ApcStory >> when: aWhenBlock [
	aWhenBlock value: when.
	
]
