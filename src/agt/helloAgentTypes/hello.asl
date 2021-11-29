// Agent hello in project JaCaMoExamples

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

//whenever I have a goal !start and I believe in message(X),
//I will achieve this goal by doing .print(X), which is a library method
+!start : message(X) <- .print(X).

//if the belief of the plan above isn't respected, then this is the default
+!start : true <- .print("Hello world").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organization
//{ include("$moiseJar/asl/org-obedient.asl") }
