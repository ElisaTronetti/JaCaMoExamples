// Agent participant in project JaCaMoExamples

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */

+task(D) : running("yes") <- bid(math.random * 100 + 10).

//when the winner property in the environment changes, this plan is triggered and everyone checks if they are the winner
+winner(W): .my_name(W) <- .print("I won!").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$moiseJar/asl/org-obedient.asl") }
