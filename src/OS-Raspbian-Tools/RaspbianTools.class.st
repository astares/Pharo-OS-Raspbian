"
Common class for Raspbian tools
"
Class {
	#name : #RaspbianTools,
	#superclass : #Object,
	#category : #'OS-Raspbian-Tools-Base'
}

{ #category : #menu }
RaspbianTools class >> fileManagerMenuOn: aBuilder [
	<worldMenu> 
	(aBuilder item: #'PCMan FileManager')
		parent: #'OS-Raspbian Tools';	 
		help: 'Open file manager on working directory';
		order: 0;
		action: [ self openFileManagerOnWorkingDirectory ]"; 
		icon: (OSXToolIcons iconNamed: #finderIcon) "
]

{ #category : #menu }
RaspbianTools class >> menuCommandOn: aBuilder [ 
	<worldMenu> 
	(aBuilder item: #'OS-Raspbian Tools')	
		parent: #'Tools';
		order: 12; 
		help: 'Raspbian Tools';
		icon: (RaspbianToolIcons iconNamed: #raspbianIcon);
		withSeparatorAfter
]

{ #category : #utilities }
RaspbianTools class >> openFileManagerOnWorkingDirectory [

	Raspbian system: 'pcmanfm .'
]

{ #category : #utilities }
RaspbianTools class >> openTerminalWindowOnWorkingDirectory [

	Raspbian system: 'lxterminal'
]

{ #category : #menu }
RaspbianTools class >> terminalMenuOn: aBuilder [
	<worldMenu> 
	(aBuilder item: #'Terminal')
		parent: #'OS-Raspbian Tools';	 
		help: 'Open terminal window on working directory';
		order: 0;
		action: [ self openTerminalWindowOnWorkingDirectory ]"; 
		icon: (OSXToolIcons iconNamed: #finderIcon) "
]
