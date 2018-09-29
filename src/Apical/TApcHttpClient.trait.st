Trait {
	#name : #TApcHttpClient,
	#category : #'Apical-Core'
}

{ #category : #accessing }
TApcHttpClient >> execute [
	self explicitRequirement
]

{ #category : #accessing }
TApcHttpClient >> request: aZnRequest [
	self explicitRequirement
]

{ #category : #accessing }
TApcHttpClient >> response [
	<return: #ZnResponse>
	self explicitRequirement
]
