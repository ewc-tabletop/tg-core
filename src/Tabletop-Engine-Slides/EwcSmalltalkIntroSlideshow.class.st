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
EwcSmalltalkIntroSlideshow >> everythingIsAnObjectPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Все есть объект')
		addSnippet: (LeTextSnippet new
				string: 'Каждый объект это экземпляр какого-то класса.';
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Числа, строки, блоки и булевы значения - это объекты';
				addSnippet: (LeTextSnippet new
						string: 'Мы можем увидеть детали любого объекта и взаимодействовать с ним.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '1';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '''Привет!''';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'true';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '[ 3 + 4 ]';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Инспектор объектов предлагает несколько разных точек зрения на объект в разных вкладках.';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Классы - это тоже объекты';
				addSnippet: (LeTextSnippet new
						string: 'Поскольку классы - это объекты, мы можем точно так же инспектировать их, взаимодействовать с ними и применять к ним инструменты среды.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'SmallInteger';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Классам можно посылать сообщения.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'SmallInteger maxVal';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Что произойдет, если прибавить единицу к самому большому `SmallInteger`?';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Методы - это объекты';
				addSnippet: (LeTextSnippet new
						string: 'Можно попросить у класса скомпилированный код метода, который можно проинспектировать.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Также можно посмотреть на исходный код метода, его байткод и AST.';
						yourself);
				addSnippet: (LePharoSnippet new
						code: '4 even';
						yourself);
				addSnippet: (LePharoSnippet new
						code: 'SmallInteger>>#even';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Эта страница - объект';
				addSnippet: (LePharoSnippet new
						code: 'thisSnippet page ';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Инструменты среды - объекты';
				addSnippet: (LePharoSnippet new
						code: 'GtCoder forClass: SmallInteger';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Эта презентация - объект';
				addSnippet: (LePharoSnippet new
						code: 'GtPresenterSlideShow create: EwcSmalltalkIntroSlideshow new';
						yourself);
				yourself);
		addSnippet: (LeTextSnippet new
				string: '#Сама среда - объект';
				addSnippet: (LePharoSnippet new
						code: 'GtWorldElement new ';
						yourself);
				yourself);
		yourself
]

{ #category : #accessing }
EwcSmalltalkIntroSlideshow >> initializeDb [
	self db addPage: self liveDemoPage.
	self db addPage: self everythingIsAnObjectPage
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> liveDemoPage [
	<gtExample>
	<noTest>
	^ (LePage named: 'Изменение системы "на лету"')
		addSnippet: (LeTextSnippet new
				string: '#Пример небольшой системы';
				addSnippet: (LeTextSnippet new
						string: 'Это маленькая демонстрация частиц, двигающихся по прямой в замкнутом пространстве и отталкивающихся от его стенок.';
						yourself);
				addSnippet: (LeTextSnippet new
						string: 'Эти частицы - не просто анимированные пиксели, а полноценные объекты, с которыми можно взаимодействовать.';
						yourself);
				yourself);
		addSnippet: (LePharoSnippet new
				code: 'EwcBouncingAtoms demo';
				yourself);
		yourself
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
		всеЕстьОбъект:
		синтаксисЯзыка:
		живойПример:
	)
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> всеЕстьОбъект: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #всеЕстьОбъект:);
		startPage: (self db pageNamed: 'Все есть объект')
]

{ #category : #slides }
EwcSmalltalkIntroSlideshow >> живойПример: aSlide [
	<gtSlide>
	^ aSlide lepiterPage
		priority: (self priorityFor: #живойПример:);
		startPage: (self db pageNamed: 'Изменение системы "на лету"')
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
