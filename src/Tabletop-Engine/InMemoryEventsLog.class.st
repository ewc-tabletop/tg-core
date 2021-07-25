"
I represent simple naive implementation of all the persisted events, stored in memory.
"
Class {
	#name : #InMemoryEventsLog,
	#superclass : #Object,
	#instVars : [
		'events'
	],
	#category : #'Tabletop-Engine-Core'
}

{ #category : #accessing }
InMemoryEventsLog >> events: aCollection [
	events := aCollection
]

{ #category : #testing }
InMemoryEventsLog >> isEmptyOrNil [
	^ events isEmptyOrNil
]

{ #category : #accessing }
InMemoryEventsLog >> nextPut: anAction [
	events ifNil: [ events := OrderedCollection new ].
	events add: anAction
]
