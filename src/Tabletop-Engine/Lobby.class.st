"
I represent the Game Lobby - an entry point to the whole Games application.

Responsibilities:
	- provide access to all existing Tables
	- provide access to GameRoom creation
	
@todo #17 Implement Lobby as a Singleton
"
Class {
	#name : #Lobby,
	#superclass : #Object,
	#instVars : [
		'tables'
	],
	#category : #'Tabletop-Engine-Core'
}

{ #category : #'instance creation' }
Lobby class >> new [ 
	^ self basicNew initialize
]

{ #category : #'as yet unclassified' }
Lobby >> addTables: anArray [
	(tables addAll: anArray; yourself) do: [:table | table addDependent: self].
	self changed: #tables with: self.
]

{ #category : #'as yet unclassified' }
Lobby >> availableTables [
	^ tables select: [ :table | table isAvailable ] .
]

{ #category : #initialization }
Lobby >> initialize [ 
	tables := OrderedCollection new 
]

{ #category : #'as yet unclassified' }
Lobby >> subscribeUsers: anArray [ 
	anArray do: [ :user | self addDependent: user ].
	self changed: #users with: self.
]

{ #category : #updating }
Lobby >> update: aSymbol [
	self changed: aSymbol with: self
]
