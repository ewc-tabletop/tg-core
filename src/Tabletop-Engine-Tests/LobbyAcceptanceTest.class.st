"
@todo #15 Implement two Users and Lobby with one available Table
"
Class {
	#name : #LobbyAcceptanceTest,
	#superclass : #TestCase,
	#category : #'Tabletop-Engine-Tests-Acceptance'
}

{ #category : #'tests - test data' }
LobbyAcceptanceTest >> lobbyWithFreeTable [
	^ Lobby new addTables: { Table withState: (TestState withMaxPlayers: 1) }
]

{ #category : #'tests - test data' }
LobbyAcceptanceTest >> lobbyWithoutFreeTables [
	^ Lobby new addTables: { UnavailableTable new }
]

{ #category : #tests }
LobbyAcceptanceTest >> testSingleUserAndALobbyWithFreeTable [
	| user lobby |
	
	user := TEUser new. 
	lobby := self lobbyWithFreeTable.
	
	lobby subscribeUsers: { user }.
	
	self assert: (user tables size) equals: 1.
]

{ #category : #tests }
LobbyAcceptanceTest >> testSingleUserAndALobbyWithoutFreeTables [
	| user lobby |
	
	user := TEUser new. 
	lobby := self lobbyWithoutFreeTables.
	
	lobby subscribeUsers: { user }.
	
	self assert: (user tables size) equals: 0.
]

{ #category : #tests }
LobbyAcceptanceTest >> testSingleUserAndAnEmptyLobby [ 
	| user lobby |
	
	user := TEUser new. 
	lobby := Lobby new.
	
	lobby subscribeUsers: { user }.
	
	self assert: (user tables size) equals: 0.
]
