Class {
	#name : #ApcRequestSpec,
	#superclass : #Object,
	#category : #'Apical-Spec'
}

{ #category : #private }
ApcRequestSpec >> applyOnRequest: aZnRequest [
	self subclassResponsibility
]

{ #category : #composing }
ApcRequestSpec >> use: aRequestBuilder [
	self subclassResponsibility
]
