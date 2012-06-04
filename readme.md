# Using the Signal Command Map for Robotlegs2

This is an example of using the Signal Command Map. This example uses the new Robotlegs2 framework (swc included for ease of use)

## Overview

This example uses a dynamically created mediator mapped to a view by it's implementing interface. This allows us to provide the signal "trigger" to a view, thus allowing it to fire a command.

## Mapping 

The appConfig.as maps 1 mediator mapping and 1 signal to command mapping:

mediatorMap.map( ITriggerTestable ).toMediator( TestTriggerProvider );

commandMap.map( TestTrigger ).toCommand( TestCommand );

## View

The example adds a view to the main stage that implements the ITriggerTestable. This causes the mediator to be created and the view injected into it (cast as ITriggerTestable). The mediator then provide the trigger to the view using a setter.

When the trigger(Signal) is fired(dispatched), the command is injected with the Signal's params and executed.