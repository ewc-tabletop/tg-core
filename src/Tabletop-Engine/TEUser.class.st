Class {
	#name : #TEUser,
	#superclass : #Object,
	#instVars : [
		'name',
		'tables'
	],
	#category : #'Tabletop-Engine-Core'
}

{ #category : #'as yet unclassified' }
TEUser >> joinTable: aTable [
	aTable addUser: self.
	aTable changed: #users.
]

{ #category : #'as yet unclassified' }
TEUser >> name [
	^ name
]

{ #category : #'as yet unclassified' }
TEUser >> name: aName [
	name := aName.
]

{ #category : #'as yet unclassified' }
TEUser >> tables [
	^ tables
]

{ #category : #'as yet unclassified' }
TEUser >> tables: aCollection [ 
	tables := aCollection.
]

{ #category : #updating }
TEUser >> update: aSymbol with: aLobby [
	#(#users #tables) 
		detect: [ :each | each = aSymbol ] 
		ifFound: [ self tables: aLobby availableTables 	].
]
