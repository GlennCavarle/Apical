Class {
	#name : #ApcItem,
	#superclass : #Object,
	#instVars : [
		'description'
	],
	#category : #'Apical-Core'
}

{ #category : #accessing }
ApcItem >> description [
	^ description
]

{ #category : #accessing }
ApcItem >> description: anObject [
	description := anObject
]

{ #category : #execute }
ApcItem >> execute [
	self subclassResponsibility
]
