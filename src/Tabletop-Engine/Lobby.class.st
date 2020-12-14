"
I represent the Game Lobby - an entry point to the whole Games application.

Responsibilities:
	- provide access to all existing GameRooms
	- provide access to GameRoom creation
	
@todo #17 Implement Lobby as a Singleton
"
Class {
	#name : #Lobby,
	#superclass : #Object,
	#instVars : [
		'fullRooms',
		'newRooms',
		'waitingRooms'
	],
	#category : #'Tabletop-Engine'
}

{ #category : #accessing }
Lobby >> activeRooms [
	waitingRooms ifNil: [ waitingRooms := OrderedCollection new ].
	^ waitingRooms
]
