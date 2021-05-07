"
@todo #15 Implement single User and an empty Lobby case

@todo #15 Implement single User and Lobby without free Tables

@todo #15 Implement single User and Lobby with one available Table

@todo #15 Implement two Users and Lobby with one available Table
"
Class {
	#name : #LobbyAcceptanceTest,
	#superclass : #TestCase,
	#category : #'Tabletop-Engine-Tests-Acceptance'
}

{ #category : #tests }
LobbyAcceptanceTest >> testSingleUserAndAnEmptyLobby [ 
	| user lobby |
	
	user := TEUser new. 
	lobby := Lobby new.
	
	lobby subscribeUsers: { user }.
	
	self assert: (user tables size) equals: 0.
]
