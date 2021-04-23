Class {
	#name : #LobbyInteractionTest,
	#superclass : #TestCase,
	#category : #'Tabletop-Engine-Tests'
}

{ #category : #tests }
LobbyInteractionTest >> testUsersJoiningTable [
"
- Создать пустое Лобби
- Создать двух юзеров
- Юзер зайдет в лобби:
  - подпишется на его обновления. 
  - получит список доступных столов (он пустой).
- Создать пустой стол для Mastermind
- Добавить созданный стол в Лобби
- Лобби обновится:
	- разошлет подписчикам уведомление
	- юзеры запросят список доступных столов (в списке один стол)
- Один юзер сядет за этот стол
- Лобби обновится
- Второй юзер получит пустой список доступных столов
"

| lobby eugene nikita table |

lobby := Lobby new tables: (OrderedCollection newFrom: #()).

eugene := TEUser new name: 'Eugene'.
nikita := TEUser new name: 'Nikita'.

lobby addUsers: { eugene . nikita }.

table := Table withState: TEMastermindState new.
lobby addTables: { table }.

nikita.

self assert: nikita name equals: 'Nikita'.
]
