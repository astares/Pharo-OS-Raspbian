"
Baseline for Raspbian OS support within Pharo
"
Class {
	#name : #BaselineOfOSRaspbian,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSRaspbian
}

{ #category : #baselines }
BaselineOfOSRaspbian >> baseline: spec [
	<version: 'baseline'>

	spec for: #'common' do: [
		spec 
			package: #'OS-Raspbian-Core';
			package: #'OS-Raspbian-Environment' with: [
				spec requires: #(#'OS-Raspbian-Core' ). ];
			package: 'OS-Raspbian-Tools' with: [
				spec requires: #(#'OS-Raspbian-Core' #'OS-Raspbian-Environment' ). ];
			package: #'OS-Raspbian-Tests-Core' with: [
				spec requires: #(#'OS-Raspbian-Core' ). ].
		spec 
			group: 'Core' with: #(#'OS-Raspbian-Core' #'OS-Raspbian-Environment' );
			group: 'Tests' with: #(#'OS-Raspbian-Tests-Core' );
			group: 'Tools' with: #('OS-Raspbian-Tools' );
			group: 'default' with: #('Core' 'Tests' 'Tools' ). ].

]
