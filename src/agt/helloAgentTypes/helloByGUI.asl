// Agent helloByGUI in project JaCaMoExamples

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

//printMsg is created in the environment, it doesn't need the . before the instruction because of that
+!start : message(X) <- printMsg(X).
+!start : true <- printMsg("Hello world").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
