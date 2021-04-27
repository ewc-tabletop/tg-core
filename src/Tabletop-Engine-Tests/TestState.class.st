Class {
	#name : #TestState,
	#superclass : #TEMastermindState,
	#instVars : [
		'maxPlayers'
	],
	#category : #'Tabletop-Engine-Tests-Core'
}

{ #category : #'as yet unclassified' }
TestState class >> withMaxPlayers: aNumber [
	^ self new
		players: OrderedCollection new;
		maxPlayers: aNumber;
		yourself.
]

{ #category : #accessing }
TestState >> maxPlayers [ 
	^ maxPlayers 
]

{ #category : #'as yet unclassified' }
TestState >> maxPlayers: anInteger [ 
	maxPlayers := anInteger
]

{ #category : #'as yet unclassified' }
TestState >> players: aCollection [ 
	players := aCollection
]
