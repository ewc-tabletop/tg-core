Class {
	#name : #BaselineOfTabletopEngine,
	#superclass : #BaselineOf,
	#category : #BaselineOfTabletopEngine
}

{ #category : #baselines }
BaselineOfTabletopEngine >> baseline: spec [
	<baseline>
	spec
		for: #common 
		do: [ spec 
			package: 'Tabletop-Engine';
			package: 'Tabletop-Engine-Tests' with: [ spec requires: #('Tabletop-Engine') ] ]
]

{ #category : #accessing }
BaselineOfTabletopEngine >> projectClass [ 
	^ MetacelloCypressBaselineProject
]
