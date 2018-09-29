Class {
	#name : #BaselineOfApical,
	#superclass : #BaselineOf,
	#category : #BaselineOfApical
}

{ #category : #baselines }
BaselineOfApical >> baseline: spec [
	<baseline>

	spec for: #common do: [
		
		spec
			baseline: 'ZincHTTPComponents' with: [ spec
			repository: 'github://svenvc/zinc/repository' ].
		
		spec 
			configuration: 'NeoJSON' with: [ spec
			repository: 'github://svenvc/NeoJSON/repository' ].
		
		
		spec 
			package: #'Apical' with: [ spec requires: #(#'ZincHTTPComponents' #NeoJSON) ]
					
	]
]
