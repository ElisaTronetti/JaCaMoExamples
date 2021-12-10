// Agent participant in project JaCaMoExamples

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */

//when the event is triggered, send your bid to the agents that told you the auction started
+auction(service, D)[source(A)] <- .send(A, tell, bid(D, math.random * 100 + 10)).

+winner(W): .my_name(W) <- .print("I won!").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$moiseJar/asl/org-obedient.asl") }
