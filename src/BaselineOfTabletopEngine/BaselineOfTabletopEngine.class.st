Class {
	#name : #BaselineOfTabletopEngine,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfTabletopEngine
}

{ #category : #baselines }
BaselineOfTabletopEngine class >> loadLepiter [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'nergal-perm'
				/ 'tg-core' / 'lepiter'.
	LeDatabasesRegistry default defaultLogicalDatabase reload
]

{ #category : #baselines }
BaselineOfTabletopEngine >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec postLoadDoIt: #postLoadBaseline:.
			spec
				package: 'Tabletop-Engine';
				package: 'Tabletop-Engine-Slides';
				package: 'Tabletop-Engine-Tests'
					with: [ spec requires: #('Tabletop-Engine') ] ]
]

{ #category : #baselines }
BaselineOfTabletopEngine >> postLoadBaseline: spec [
	(PostLoaded isNotNil and: [ PostLoaded ]) ifTrue: [ ^ self ].

	(Smalltalk includesKey: #GtImage) ifTrue: [ self class loadLepiter ].
	PostLoaded := true
]

{ #category : #baselines }
BaselineOfTabletopEngine >> projectClass [ 
	^ MetacelloCypressBaselineProject
]
