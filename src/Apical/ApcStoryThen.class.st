Class {
	#name : #ApcStoryThen,
	#superclass : #ApcStoryStep,
	#instVars : [
		'body',
		'headers',
		'status'
	],
	#category : #'Apical-Core'
}

{ #category : #private }
ApcStoryThen >> applyOnResponse: aZnResponse [
	status applyOnResponse: aZnResponse.
	headers applyOnResponse: aZnResponse.
	body applyOnResponse: aZnResponse
]

{ #category : #'public - accessing' }
ApcStoryThen >> body [
	^ body
]

{ #category : #'public - accessing' }
ApcStoryThen >> headers [
	^ headers
]

{ #category : #initialization }
ApcStoryThen >> initialize [
	super initialize.
	status := ApcStatusAsserter new.
	headers := ApcHeadersAsserter new.
	body := ApcBodyAsserter new
]

{ #category : #'public - accessing' }
ApcStoryThen >> status [
	^ status
]

{ #category : #composing }
ApcStoryThen >> use: anApcGiven [
	status use: anApcGiven status.
	headers use: anApcGiven headers.
	body use: anApcGiven body
]
