"
The Raspbian OS
"
Class {
	#name : #Raspbian,
	#superclass : #Object,
	#category : #'OS-Raspbian-Core-OS'
}

{ #category : #'private - utilities' }
Raspbian class >> contentsOf: fileName [

	 ^fileName asFileReference readStreamDo: [:s | s upToEnd asString ]
]

{ #category : #accessing }
Raspbian class >> linuxVersionString [
	
	^self contentsOf: '/proc/version' 
]

{ #category : #primitives }
Raspbian class >> system: command [
	
	 ^ self ffiCall: #(int system(char* command) ) 
			  module: LibC
]
