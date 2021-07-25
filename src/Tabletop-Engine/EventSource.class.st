"
I represent a storage for all Events (Actions) for all Games and Lobbies.
"
Class {
	#name : #EventSource,
	#superclass : #Object,
	#instVars : [
		'unprocessed',
		'processed'
	],
	#category : #'Tabletop-Engine-Core'
}

{ #category : #accessing }
EventSource class >> withPersistentLog: anEventsLog [

	^ self new
		events: WaitfreeQueue new;
		processed: anEventsLog;
		yourself.

]

{ #category : #accessing }
EventSource >> events: anObject [
	unprocessed := anObject
]

{ #category : #testing }
EventSource >> hasUnprocessed [
	^ unprocessed isEmpty not.
]

{ #category : #testing }
EventSource >> isEmpty [ 
	^ unprocessed isEmpty and: processed isEmptyOrNil.
]

{ #category : #'as yet unclassified' }
EventSource >> performNext [
	
	unprocessed nextOrNil ifNotNil: [ :action | 
		action perform .
		processed nextPut: action ] .
   ^ self
]

{ #category : #accessing }
EventSource >> processed: anEventLog [
	processed := anEventLog 
]

{ #category : #'as yet unclassified' }
EventSource >> registerEvent: anEvent [
	^ unprocessed nextPut: anEvent.

]
