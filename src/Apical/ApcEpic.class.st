Class {
	#name : #ApcEpic,
	#superclass : #ApcItem,
	#instVars : [
		'stories'
	],
	#category : #'Apical-Core'
}

{ #category : #adding }
ApcEpic >> addStory: aApcStory [
	stories add: aApcStory
]

{ #category : #execute }
ApcEpic >> execute [
	|givenNext giventNextAll |
	
	giventNextAll := OrderedCollection new.
	givenNext := nil.
	
	stories do: [ :each | |nextGiven|
		
		nextGiven := ApcStoryGiven new.
		givenNext ifNotNil:[:gn| gn value: nextGiven value: each response].
		giventNextAll do:[:gna| gna value: nextGiven value: each response].
		each useGiven: nextGiven.
		
		each execute.
		
		givenNext := each givenNext.
		each givenNextAll ifNotNil:[:nga| giventNextAll add: nga].
		
		 ]
	
]

{ #category : #initialization }
ApcEpic >> initialize [
	super initialize.
	stories := OrderedCollection new.
]
