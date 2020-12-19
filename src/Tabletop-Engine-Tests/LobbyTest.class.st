Class {
	#name : #LobbyTest,
	#superclass : #TestCase,
	#instVars : [
		'emptyLobby'
	],
	#category : #'Tabletop-Engine-Tests-Core'
}

{ #category : #running }
LobbyTest >> setUp [ 
	super setUp .
	emptyLobby := Lobby withGames: (Dictionary newFromPairs: { #Abstract . GameFactory new }).
]

{ #category : #tests }
LobbyTest >> testEmptyListsUponCreation [

	self assert: emptyLobby activeRooms isEmpty .
	self assert: emptyLobby fullRooms isEmpty .
]

{ #category : #tests }
LobbyTest >> testShouldContainGameFactory [

	self assert: emptyLobby newRooms isNotEmpty .
	
	
]

{ #category : #tests }
LobbyTest >> testShouldNotCreateAbstractGames [

	self should: [ emptyLobby createGame: #Abstract ] raise: SubclassResponsibility .
]
