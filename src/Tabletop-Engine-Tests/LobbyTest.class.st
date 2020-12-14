Class {
	#name : #LobbyTest,
	#superclass : #TestCase,
	#category : #'Tabletop-Engine-Tests'
}

{ #category : #tests }
LobbyTest >> testEmptyListsUponCreation [

	| lobby |
	lobby := Lobby new.
	self assert: lobby activeRooms isEmpty 
]

{ #category : #asserting }
LobbyTest >> testInstantiate [

	| lobby |
	lobby := Lobby new.
	lobby ifNotNil: [ self assert: true ] ifNil: [ self assert: false ]  
]
