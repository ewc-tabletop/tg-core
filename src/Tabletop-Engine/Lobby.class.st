"
I represent the Game Lobby - an entry point to the whole Games application.

Responsibilities:
	- provide access to all existing GameRooms
	- provide access to GameRoom creation
	
@todo #17 Implement Lobby as a Singleton

@todo #17 Implement an ability to see creatable games
"
Class {
	#name : #Lobby,
	#superclass : #Object,
	#instVars : [
		'tables'
	],
	#category : #'Tabletop-Engine-Core'
}

{ #category : #'as yet unclassified' }
Lobby >> addTables: anArray [
	tables addAll: (anArray collect: [ :table | 
		table addDependent: self;
		yourself 
	]).
	self changed: #tables with: self.
]

{ #category : #'as yet unclassified' }
Lobby >> addUsers: anArray [ 
	anArray do: [ :user | self addDependent: user ].
	self changed: #users with: self.
]

{ #category : #'as yet unclassified' }
Lobby >> availableTables [
	^ tables select: [ :table | table isAvailable ].
]

{ #category : #'as yet unclassified' }
Lobby >> tables: aCollection [ 
	tables := aCollection
]
