"
@todo #3 Implement abstract game factory
"
Class {
	#name : #GameFactory,
	#superclass : #Object,
	#category : #'Tabletop-Engine-Core'
}

{ #category : #factory }
GameFactory >> createGame [
	self subclassResponsibility
]
