"
I do the same thing as my mother class but I show mines on the field by printing a M.
"
Class {
	#name : #MDebugFieldPrinter,
	#superclass : #MFieldPrinter,
	#category : 'MineSweeper-Visitors'
}

{ #category : #visiting }
MDebugFieldPrinter >> visitMMine: aMMine [
	self writeStream << $M
]
