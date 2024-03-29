Class {
	#name : #Table,
	#superclass : #Object,
	#instVars : [
		'state',
		'referee'
	],
	#category : #'Tabletop-Engine-Core'
}

{ #category : #'as yet unclassified' }
Table class >> withState: aDictionary [
	^ self new withState: aDictionary
]

{ #category : #'as yet unclassified' }
Table class >> withState: aCollection andReferee: aReferee [ 
	^ self new withState: aCollection andReferee: aReferee. 
]

{ #category : #'as yet unclassified' }
Table >> addUser: aTEUser [ 
	state playersCanJoin 
		ifTrue: [ state addPlayer: aTEUser ]
]

{ #category : #testing }
Table >> isAvailable [ 
	^ state playersCanJoin 
]

{ #category : #'as yet unclassified' }
Table >> runAction: anAction [
	(anAction isValidFor: state) 
		ifTrue: [ anAction performOn: state ] 
	
	 
]

{ #category : #'as yet unclassified' }
Table >> withState: aDictionary [
	state := aDictionary.
]

{ #category : #'as yet unclassified' }
Table >> withState: aDictionary andReferee: aReferee [
	state := aDictionary.
	referee := aReferee.
]
