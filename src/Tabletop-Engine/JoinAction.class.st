Class {
	#name : #JoinAction,
	#superclass : #Object,
	#instVars : [
		'player'
	],
	#category : #'Tabletop-Engine-Core'
}

{ #category : #accessing }
JoinAction class >> player: aPlayer [
	^ self new player: aPlayer.
]

{ #category : #validation }
JoinAction >> isValidFor: aState [
	^ aState hasFreeSeats.
]

{ #category : #matching }
JoinAction >> performOn: aState [
	aState addPlayer: player.
]

{ #category : #accessing }
JoinAction >> player: aPlayer [
	player := aPlayer.
]
