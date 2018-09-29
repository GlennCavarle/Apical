Class {
	#name : #ApcHandlerClient,
	#superclass : #Object,
	#traits : 'TApcHttpClient',
	#classTraits : 'TApcHttpClient classTrait',
	#instVars : [
		'request',
		'response',
		'handler'
	],
	#category : #'Apical-Core'
}

{ #category : #'instance creation' }
ApcHandlerClient class >> on: aRequestHandler [
	^ self new
		handler: aRequestHandler;
		yourself
]

{ #category : #accessing }
ApcHandlerClient >> execute [
	response := handler handleRequest: request
]

{ #category : #accessing }
ApcHandlerClient >> handler: aRequestHandler [
	handler := aRequestHandler
]

{ #category : #accessing }
ApcHandlerClient >> request: aZnRequest [
	request := aZnRequest
]

{ #category : #accessing }
ApcHandlerClient >> response [
	^ response
]
