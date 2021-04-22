Class {
	#name : #State,
	#superclass : #Object,
	#instVars : [
		'state'
	],
	#category : #'Tabletop-Engine-Core'
}

{ #category : #adding }
State >> addPlayer: aPlayer [
	(state at: #players) add: aPlayer.
]

{ #category : #testing }
State >> hasFreeSeats [
	^ (state at: #players) size < (state at: #maxPlayers)
]

{ #category : #accessing }
State >> state: anObject [
	state := anObject
]
