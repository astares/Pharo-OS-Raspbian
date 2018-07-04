menu
terminalMenuOn: aBuilder
	<worldMenu> 
	(aBuilder item: #'Terminal')
		parent: #'OS-Raspbian Tools';	 
		help: 'Open terminal window on working directory';
		order: 0;
		action: [ self openTerminalWindowOnWorkingDirectory ]"; 
		icon: (OSXToolIcons iconNamed: #finderIcon) "