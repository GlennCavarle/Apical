Class {
	#name : #ApcBodyAsserter,
	#superclass : #ApcAsserter,
	#category : #'Apical-Asserter'
}

{ #category : #'public - testing json content' }
ApcBodyAsserter >> containsValidJson [
	assertions add:[:resp| |result|
			result := [NeoJSONReader fromString: resp contents. true]
				on:Exception do:[false].
			
			self 
				assert: result
				description: 'Content should be valid json'
			
		]
]

{ #category : #'public - testing json content' }
ApcBodyAsserter >> isJsonArray [
	assertions add:[:resp| 
			[|data|
			data := (NeoJSONReader fromString: resp contents).
			self 
				assert: data isArray
				description: ('Json content should be an array, {1} given' format:{data className})
			]	on:Exception do:[self assert:false].
		]
]
