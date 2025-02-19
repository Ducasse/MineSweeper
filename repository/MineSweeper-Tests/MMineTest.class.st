"
A MMineTest is a test class for testing the behavior of MMine
"
Class {
	#name : #MMineTest,
	#superclass : #TestCase,
	#traits : 'MTestResources',
	#classTraits : 'MTestResources classTrait',
	#instVars : [
		'field'
	],
	#category : 'MineSweeper-Tests'
}

{ #category : #running }
MMineTest >> setUp [
	field := MField matrix: self matrixForField
]

{ #category : #'tests-clicking' }
MMineTest >> testClickInAtAt [
	| loose |
	loose := false.
	field announcer when: MPlayerLoose do: [ loose := true ].
	(field boxAt: 1 at: 3) clickIn: field at: 1 at: 3.
	self assert: loose
]
