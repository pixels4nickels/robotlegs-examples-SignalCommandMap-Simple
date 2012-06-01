# CovariantLoveFest

This is an example of using the signal command map. This example uses the new Robotlegs2 framework (swc included for ease of use)

## Overview

This example shows how to dynamically create mediators for each interface that a view implements. This allows us to use multiple mediators for a given view, allowing for a single responsibility type approach(SOLID).


## Mapping

The appConfig.as maps an interface to a mediator and a signal to a command:

	mediatorMap.map( ISignalCommandTestable ).toMediator( SignalCommandTester );
	commandMap.map( TestSignal ).toCommand( TestCommand );

When a view is added to stage that implements either the interface, the mediator will be created and injected with the view(cast as the interface).

## Mediator

The mediator in this example gets a signal injected that is then set on the view.

## View

The view in this example dispatches the signal with 3 arguments. the first 2 just illustrate how you would pass arguments along to the command. The 3rd argument is a callback function that declares a local handler. The handler will be invoked by the command when complete, passing a simple command notification.

This is great when only the calling/dispatching view needs to know about what happened in the command and/or when it is complete(async stuff).
