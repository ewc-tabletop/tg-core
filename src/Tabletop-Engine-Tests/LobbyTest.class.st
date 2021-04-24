"
A LobbyTest is a test class for testing the behavior of Lobby
"
Class {
	#name : #LobbyTest,
	#superclass : #TestCase,
	#category : #'Tabletop-Engine-Tests-Core'
}

{ #category : #tests }
LobbyTest >> defaultLobby [
	^Lobby new 
		addTables: Table new asOrderedCollection;
		yourself
]

{ #category : #tests }
LobbyTest >> testHasNoAvailableTablesUponCreation [

	self assert: Lobby new availableTables isEmpty.
]

{ #category : #tests }
LobbyTest >> testLobbyRegistersAsTableDependent [

	| lobby tableDependents |
	lobby := self defaultLobby .
	tableDependents := (lobby availableTables detect: [ :table | table isAvailable ]) dependents.
	self assert: (tableDependents includes: lobby).
]

{ #category : #tests }
LobbyTest >> testTablesCanBeAdded [
	| lobby |
	lobby := self defaultLobby .
	self assert: lobby availableTables notEmpty
]
