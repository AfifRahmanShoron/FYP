Class {
	#name : #Negative,
	#superclass : #FunctionX,
	#category : #'StCAD-Math-StMathFunctionSymbolic'
}

{ #category : #'VisualWorks metadata' }
Negative class >> visualWorksMetadata [

	^ #(
		'namespace' 'StCAD.Math'
		'superclassNamespace' 'StCAD.Math'
	)

]

{ #category : #'StCAD-UI' }
Negative >> cadStringOn: aStream [ 
	aStream nextPut: $(.
	aStream nextPut: $-.
	x cadStringOn: aStream.
	aStream nextPut: $)
]

{ #category : #evaluating }
Negative >> differentiateWRTx [
	^Constant with: -1
]

{ #category : #printing }
Negative >> printFuntionNameOn: aStream [
	aStream nextPutAll: '-'
]

{ #category : #evaluating }
Negative >> value [
	^x value negated
]
