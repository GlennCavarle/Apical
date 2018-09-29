Class {
	#name : #ApcStoryGiven,
	#superclass : #ApcStoryStep,
	#instVars : [
		'auth',
		'body',
		'headers',
		'uri'
	],
	#category : #'Apical-Core'
}

{ #category : #private }
ApcStoryGiven >> applyOnRequest: aZnRequest [
	headers applyOnRequest: aZnRequest.
	uri applyOnRequest: aZnRequest.
	body applyOnRequest: aZnRequest.
	auth applyOnRequest: aZnRequest.
]

{ #category : #'public - accessing' }
ApcStoryGiven >> auth [
	^ auth 
]

{ #category : #'public - accessing' }
ApcStoryGiven >> body [
	^ body 
]

{ #category : #'public - accessing' }
ApcStoryGiven >> headers [
	^ headers 
]

{ #category : #initialization }
ApcStoryGiven >> initialize [
	super initialize.
	auth := ApcAuthSpec new.
	headers := ApcHeadersSpec new.
	uri := ApcUriSpec new.
	body := ApcBodySpec new
]

{ #category : #'public - accessing' }
ApcStoryGiven >> uri [
	^ uri 
]

{ #category : #composing }
ApcStoryGiven >> use: anApcGiven [
	auth use: anApcGiven auth.
	uri use: anApcGiven uri.
	headers use: anApcGiven headers.
	body use: anApcGiven body
]
