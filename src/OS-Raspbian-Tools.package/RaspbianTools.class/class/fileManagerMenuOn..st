menu
fileManagerMenuOn: aBuilder
	<worldMenu> 
	(aBuilder item: #'PCMan FileManager')
		parent: #'OS-Raspbian Tools';	 
		help: 'Open file manager on working directory';
		order: 0;
		action: [ self openFileManagerOnWorkingDirectory ]"; 
		icon: (OSXToolIcons iconNamed: #finderIcon) "