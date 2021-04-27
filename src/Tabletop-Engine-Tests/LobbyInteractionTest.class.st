Class {
	#name : #LobbyInteractionTest,
	#superclass : #TestCase,
	#category : #'Tabletop-Engine-Tests-Core'
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

lobby := Lobby new.

eugene := TEUser new name: 'Eugene'.
nikita := TEUser new name: 'Nikita'.

" Такое ощущение, что это игроки должны подписаться на обновления лобби, 
  а не лобби должно подписать игроков на свои обновления"
lobby subscribeUsers: { eugene . nikita }.

table := Table withState: TEMastermindState new.
lobby addTables: { table }.

self assert: nikita tables isNotEmpty.
self assert: eugene tables isNotEmpty.

eugene joinTable: (eugene tables first).

self assert: nikita tables isEmpty.
]
