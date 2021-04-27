"
A LobbyTest is a test class for testing the behavior of Lobby
"
Class {
	#name : #LobbyTest,
	#superclass : #TestCase,
	#category : #'Tabletop-Engine-Tests-Core'
}

{ #category : #tests }
LobbyTest >> lobbyWithATable [
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
	lobby := self lobbyWithATable .
	tableDependents := lobby availableTables first dependents.
	self assert: (tableDependents includes: lobby).
]

{ #category : #tests }
LobbyTest >> testTablesCanBeAdded [
	| lobby |
	lobby := self lobbyWithATable .
	self assert: lobby availableTables notEmpty
]
