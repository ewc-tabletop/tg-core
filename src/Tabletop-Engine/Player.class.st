"
@todo #3 Implement Player

I represent an active (i.e. deciding and taking actions) participant of the game.

Responsibilities:

 1) identify self 
 2) query the game for the list of available actions
 3) decide and choose an appropriate action to take

Knowledge: 

 1) my Tag and Place in current Game Session
 2) a Game
 3) a Game, list of Actions, Game State (?)
"
Class {
	#name : #Player,
	#superclass : #Object,
	#category : #'Tabletop-Engine'
}
