Class {
	#name : #ObservableUser,
	#superclass : #TEUser,
	#instVars : [
		'updatesCount'
	],
	#category : #'Tabletop-Engine-Tests-Acceptance'
}

{ #category : #'instance creation' }
ObservableUser class >> new [ 
	^ self basicNew initialize 
]

{ #category : #initialization }
ObservableUser >> initialize [ 
	updatesCount := 0.
	tables := [ ].
]

{ #category : #updating }
ObservableUser >> update: anAspect with: aMeta [
	super update: anAspect with: aMeta.
	anAspect = #users ifTrue: [self updatesCount: updatesCount + 1]
]

{ #category : #accessing }
ObservableUser >> updatesCount [
	^ updatesCount
]

{ #category : #accessing }
ObservableUser >> updatesCount: anObject [
	updatesCount := anObject
]
