Class {
	#name : #EwcBouncingAtoms,
	#superclass : #BlBouncingAtomsElement,
	#category : #'Tabletop-Engine-Slides'
}

{ #category : #accessing }
EwcBouncingAtoms class >> demo [
	<gtExample>
	<noTest>
	^ self new
		background: Color lightGreen;
		initializeWith: 100
			ofSize: 10 @ 10
			within: 800 @ 600
]

{ #category : #'instance creation' }
EwcBouncingAtoms >> newAtom [
	^ EwcAtom new
]
