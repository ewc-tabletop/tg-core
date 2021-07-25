Class {
	#name : #EventSourceTest,
	#superclass : #TestCase,
	#category : #'Tabletop-Engine-Tests-Core'
}

{ #category : #tests }
EventSourceTest >> testEmptyInstanceCreation [
	| target |
	target := EventSource withPersistentLog: InMemoryEventsLog new .
	self assert: target isEmpty
]

{ #category : #tests }
EventSourceTest >> testMarkActionAsProcessed [
	| target |
	target := EventSource withPersistentLog: InMemoryEventsLog new .
	target registerEvent: Action new .
	
	target performNext .
	
	self deny: target hasUnprocessed .
	self deny: target isEmpty .
]

{ #category : #tests }
EventSourceTest >> testRegisterAction [
	| target |
	target := EventSource withPersistentLog: InMemoryEventsLog new .
	target registerEvent: Action new.
	self assert: target hasUnprocessed
]
