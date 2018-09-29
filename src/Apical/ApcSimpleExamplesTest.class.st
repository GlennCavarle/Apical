Class {
	#name : #ApcSimpleExamplesTest,
	#superclass : #TestCase,
	#category : #'Apical-Example'
}

{ #category : #tests }
ApcSimpleExamplesTest >> customGiven [
	| given |
	given := ApcStoryGiven new.
	given headers contentType: 'application/json'.
	^ given
]

{ #category : #tests }
ApcSimpleExamplesTest >> testEpic [
	ApcEpic new
		description:'';
		addStory: self testStory1;
		addStory: self testStory2;
		execute
]

{ #category : #tests }
ApcSimpleExamplesTest >> testStory1 [
	^ ApcStory new
		description: '';
		baseUri: 'http://localhost:8000';
		given: [ :g | 
			g headers
				contentType: 'application/json'.
			
			]
		when: [ :w | w post: '/todos' ]
		then: [ :t | 
			t status isSuccess.
			t headers hasJsonContentType.
			t body
				containsValidJson;
				isJsonArray ];
		givenNext:[ :f :resp | ];
		execute;
		yourself
]

{ #category : #tests }
ApcSimpleExamplesTest >> testStory2 [
	^ ApcStory new
		description: '';
		baseUri: 'http://localhost:8000';
		given: [ :g | 
			g use: self customGiven
			
			]
		when: [ :w | w post: '/todos' ]
		then: [ :t | 
			t status isSuccess.
			t headers hasJsonContentType.
			t body
				containsValidJson;
				isJsonArray ];
		givenNext:[ :f :resp | ];
		execute;
		yourself
]
