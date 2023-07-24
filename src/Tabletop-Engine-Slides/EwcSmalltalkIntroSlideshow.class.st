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
EwcSmalltalkIntroSlideshow >> initializeDb [
	self db addPage: (self lepiterPages pageNamed: self liveDemoPage).
]

{ #category : #accessing }
EwcSmalltalkIntroSlideshow >> lepiterPages [
	^ LeDatabasesRegistry default defaultLogicalDatabase
		databaseNamed: 'nergal-perm/tg-core/lepiter'
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> liveDemoPage [
	^ 'Изменение системы "на лету"'
]

{ #category : #'data source' }
EwcSmalltalkIntroSlideshow >> outlineBullet [
	^ (self
		asText: '
• Что это такое - Smalltalk?')
		, (self
				asText: '
• Составные части языка и среды')
		, (self
				asText: '
• Синтаксис и особенности языка')
		, (self
				asText: '
• Особенности среды ') , (self asText: 'Glamorous Toolkit') italic
]

{ #category : #'data source' }
EwcSmalltalkIntroSlideshow >> partsBullet [
	^ (self
		asText: '
• Язык с динамической типизацией и простым синтаксисом.')
		, (self
				asText: '
• Богатая библиотека классов.')
		, (self
				asText: '
• Мощная IDE со встроенными инструментами.')
		, (self
				asText: '
• Окружение для "живого" программирования.')
		, (self
				asText: '
• Кросс-платформенный образ и виртуальные машины.')
		, (self
				asText: '
• Культура постоянных изменений и улучшений.')
]

{ #category : #accessing }
EwcSmalltalkIntroSlideshow >> picturesDirectoryPath [
	^ Path * 'feenkcom' / 'gtoolkit-demos' / 'data' / 'images'
]

{ #category : #accessing }
EwcSmalltalkIntroSlideshow >> slidePriorities [
	^ #(
		титульныйСлайд:
		содержание:
		чтоТакоеSmalltalk:
		составныеЧасти:
		синтаксисЯзыка:
		живойПример:
	)
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> живойПример: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #живойПример:);
		startPage: (self db pageNamed: self liveDemoPage)
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> синтаксисЯзыка: aSlide [
	<gtSlide>
	<text: 'Метод объявляется с помощью указания селектора сообщения и аргументов. Временные переменные (с областью видимости только внутри метода) должны быть объявлены в начале тела метода. Команды отделяются друг от друга точками. Для возврата значения из метода служит символ ^ (каретка).'>
	^ aSlide textAndElement
		priority: (self priorityFor: #синтаксисЯзыка:);
		newTextWithFormat: (self asHeader: 'Синтаксис языка');
		element: [ GtPharoSyntaxExplainer new forMethod: GtPharoMethodExample >> #exampleWithNumber: ];
		elementWeight: 0.7
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> содержание: aSlide [
	<gtSlide>
	<text: 'Я кратко пробегусь по следующим темам, расскажу только саму суть, подробности при желании вы сможете найти в интернете.'>
	^ aSlide paragraph
		priority: (self priorityFor: #содержание:);
		subtitleWithFormat: (self asSubtitle: 'О чём пойдет речь:');
		paragraphWithFormat: self outlineBullet
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> составныеЧасти: aSlide [
	<gtSlide>
	<text: '1. Язык с динамической типизацией и таким простым синтаксисом, что он весь умещается на почтовой открытке. При этом код легко воспринимается даже теми, кто не знаком с синтаксисом языка.
	2. Богатая библиотека классов, с помощью которых можно создать целую операционную систему. Весь исходный код открыт и всегда явно присутствует в среде выполнения.
	3. Мощная IDE, предоставляющая все инструменты для управления сложным кодом, а также JIT-компилятор, отладчик и многое другое.
	4. Окружение, позволяющее сократить циклы обратной связи в разработке за счет работы с исполняющимся в данный момент кодом.
	5. Платформо-независимый образ среды, который выполняется на виртуальных машинах, "заточенных" под конкретные ОС. Кросплатформенность и виртуализация появились задолго до Java/Docker.'>
	^ aSlide paragraph
		priority: (self priorityFor: #составныеЧасти:);
		subtitleWithFormat: (self asSubtitle: 'Из чего состоит Smalltalk?');
		paragraphWithFormat: self partsBullet
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> титульныйСлайд: aSlide [
	<gtSlide>
	<text: 'Я хочу рассказать о незаслуженно забытом языке программирования. Идеи, лежащие в его основе, особенности его реализации нашли свое отражение в современных устройствах (планшеты, смартфоны), UI (окна, иконки, указатель), подходах к программированию. Те, кто писал на Smalltalk, дали нам Agile-манифест, экстремальное программирование, паттерны проектирования, wiki-движки и многое-многое другое. Знакомьтесь: Smalltalk - язык, опередивший время.'>
	^ aSlide title
		priority: (self priorityFor: #титульныйСлайд:);
		titleBottomPadding: 30;
		titleWithFormat: (self asTitle: 'Smalltalk');
		subtitleWithFormat: (self asBigText: 'язык, опередивший время')
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> чтоТакоеSmalltalk: aSlide [
	<gtSlide>
	<text: 'Конец 1960-х, Алан Кей и его концепт портативного компьютера для обучения. Операционная система была разработана в Xerox PARC и включала в себя полноценный GUI (впервые в истории). Для разработки этой операционной системы был придуман язык программирования Smalltalk, который воплотил идеи Кея об объектно-ориентированном программировании.'>
	^ aSlide textAndElement
		elementWeight: 0.40;
		priority: (self priorityFor: #чтоТакоеSmalltalk:);
		newTextWithFormat: (self
				asText: 'Smalltalk - это первый чистый объектно-ориентированный язык и первая интерактивная графическая среда разработки / выполнения.');
		element: [ GtFilePictureLiveSlide new
				fileReference: (GtResourcesUtility
						resourceAtPath: self picturesDirectoryPath / 'smalltalk-80.png') ]
]
