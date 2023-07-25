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
			ofSize: 5 @ 5
			within: 400 @ 300
]

{ #category : #'instance creation' }
EwcBouncingAtoms >> newAtom [
	^ EwcAtom new
]
