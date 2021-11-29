// Agent helloInAWorkspace in project JaCaMoExamples

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

//?focused is called plan consult, and it checks if the belief of the agent is the one wanted
//(an agent from france prints only on the france gui)
+!start : message(X) <- ?focused(france, gui, ArtId);
						printMsg(X)[artifact_id(ArtId)].
+!start : true <- .print("Something is wrong").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
