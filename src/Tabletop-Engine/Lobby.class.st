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
	#category : #'Tabletop-Engine-Core'
}

{ #category : #'instance creation' }
Lobby class >> withGames: aCollection [ 
	^ self new gamesToCreate: aCollection.
]

{ #category : #accessing }
Lobby >> activeRooms [
	waitingRooms ifNil: [ waitingRooms := OrderedCollection new ].
	^ waitingRooms
]

{ #category : #'as yet unclassified' }
Lobby >> createGame: aString [ 
	^ (newRooms at: aString) createGame .
]

{ #category : #accessing }
Lobby >> fullRooms [
	fullRooms ifNil: [ fullRooms := OrderedCollection new].
	^ fullRooms
]

{ #category : #private }
Lobby >> gamesToCreate: aCollection [ 
	newRooms := aCollection.
]

{ #category : #accessing }
Lobby >> newRooms [
	newRooms ifNil: [ newRooms := OrderedCollection new].
	^ newRooms
]
