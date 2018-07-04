Class {
	#name : #RaspbianTest,
	#superclass : #RaspbianSpecificTest,
	#category : #'OS-Raspbian-Tests-Core-Base'
}

{ #category : #tests }
RaspbianTest class >> testLinuxVersionString [

	self assert: Raspbian linuxVersionString notEmpty
]
