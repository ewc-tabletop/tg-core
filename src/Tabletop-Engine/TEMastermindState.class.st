Class {
	#name : #TEMastermindState,
	#superclass : #Object,
	#instVars : [
		'players'
	],
	#category : #'Tabletop-Engine-Mastermind'
}

{ #category : #'instance creation' }
TEMastermindState class >> new [ 
	^ self basicNew initialize 
]

{ #category : #'as yet unclassified' }
TEMastermindState >> addPlayer: aTEUser [ 
	players add: aTEUser 
]

{ #category : #initialization }
TEMastermindState >> initialize [ 
	players := OrderedCollection new.

]

{ #category : #accessing }
TEMastermindState >> maxPlayers [
	^ 1
]

{ #category : #'as yet unclassified' }
TEMastermindState >> playersCanJoin [
	^ self maxPlayers > players size.
]
