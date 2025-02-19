Class {
	#name : #BaselineOfMineSweeper,
	#superclass : #BaselineOf,
	#category : 'BaselineOfMineSweeper'
}

{ #category : #baseline }
BaselineOfMineSweeper >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self
				definePackages: spec;
				defineDependencies: spec;
				defineGroups: spec ]
]

{ #category : #baseline }
BaselineOfMineSweeper >> defineDependencies: spec [
	^ spec
		baseline: 'Seaside3' with: [
			spec repository: 'github://SeasideSt/Seaside:master/repository'  ];
		yourself
]

{ #category : #baseline }
BaselineOfMineSweeper >> defineGroups: spec [
	^ spec
			group: 'core' with: #('MineSweeper' 'MineSweeper-Tests');
			group: 'seaside' with: #(#core 'MineSweeper-Seaside');
			yourself
]

{ #category : #baseline }
BaselineOfMineSweeper >> definePackages: spec [
	^ spec
		package: 'MineSweeper';
		package: 'MineSweeper-Tests' with: [ spec requires: #('MineSweeper') ];
		package: 'MineSweeper-Seaside' with: [ spec requires: #('MineSweeper' 'Seaside3') ];
		yourself
]
