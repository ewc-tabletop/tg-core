Class {
	#name : #EwcSmalltalkIntroSlideshow,
	#superclass : #PrioritySlideshow,
	#category : #'Tabletop-Engine-Slides'
}

{ #category : #accessing }
EwcSmalltalkIntroSlideshow class >> show [
	super show
]

{ #category : #accessing }
EwcSmalltalkIntroSlideshow >> slidePriorities [
	^ #(
		titleSlideFor:
	)
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> titleSlideFor: aSlide [
	<gtSlide>
	<text: 'Hello'>
	^ aSlide title
		priority: (self priorityFor: #titleSlideFor:);
		titleBottomPadding: 30;
		titleWithFormat: (self asTitle: 'Smalltalk');
		subtitleWithFormat: (self asBigText: 'язык, опередивший время')
]
