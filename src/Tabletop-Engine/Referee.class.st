Class {
	#name : #Referee,
	#superclass : #Object,
	#category : #'Tabletop-Engine-Core'
}

{ #category : #validation }
Referee >> validate: anAction on: aState [
	^ (aState at: #maxPlayers) = (aState at: #players) size
]
