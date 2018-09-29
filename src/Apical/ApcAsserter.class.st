Class {
	#name : #ApcAsserter,
	#superclass : #Object,
	#traits : 'TAssertable',
	#classTraits : 'TAssertable classTrait',
	#instVars : [
		'assertions'
	],
	#category : #'Apical-Asserter'
}

{ #category : #executing }
ApcAsserter >> applyOnResponse: aZnResponse [
	assertions do: [ :each | each value: aZnResponse ]
]

{ #category : #accessing }
ApcAsserter >> assertions [
	^ assertions 
]

{ #category : #initialization }
ApcAsserter >> initialize [
	super initialize.
	assertions := OrderedCollection new.
]

{ #category : #composing }
ApcAsserter >> use: anAsserter [
	assertions addAll: anAsserter assertions
]
