# Using the Signal Command Map for Robotlegs2

This is an example of using the Signal Command Map. This example uses the new Robotlegs2 framework (swc included for ease of use)

## Overview

This library will allow you to map a signal dispatch to the execution of a command.

## Mapping 

In your app config you map a signal to a command like so:


1. Install the extension on your context:

	context.install(SignalCommandMapExtension);


2. Inject a reference to the SignalCommandMap in your config:

	[Inject]
	public var signalCommandMap:SignalCommandMap;


3. Use the reference to create mappings:

	commandMap.map( SomeSignalClass ).toCommand( SomeCommandClass );


When the Signal above is dispatched, the command created, injected with the Signal's params,
and executed. You cannot use the same property types in a single signal because we do not know which one maps to
which property in the command.  For this reason, encapsulating your signal properties is a wise and flexible choice.