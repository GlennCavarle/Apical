Class {
	#name : #ApcStoryWhen,
	#superclass : #ApcStoryStep,
	#instVars : [
		'request',
		'method',
		'url'
	],
	#category : #'Apical-Core'
}

{ #category : #public }
ApcStoryWhen >> applyOnRequest: aRequest [
	aRequest method: method.
	aRequest url isEmpty
		ifTrue: [ aRequest url: url ]
		ifFalse: [ aRequest url: aRequest url / url ]
]

{ #category : #public }
ApcStoryWhen >> get: anUrl [
	self
		method: #GET;
		url: anUrl
]

{ #category : #public }
ApcStoryWhen >> method: aSymbol [
	method := aSymbol
]

{ #category : #public }
ApcStoryWhen >> post: anUrl [
	self
		method: #POST;
		url: anUrl
]

{ #category : #public }
ApcStoryWhen >> url: anUrl [
	url := anUrl
]
