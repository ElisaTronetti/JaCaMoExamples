// Agent helloInAllWorkspaces in project JaCaMoExamples

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

//send a message to every workspaces an agent is in. The _ works as in Prolog
+!start : message(X) <- for ( focused(_,gui,ArtId) ) {
          					printMsg(X)[artifact_id(ArtId)]
      					}.
+!start : true <- .print("Oh no").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moiseJar/asl/org-obedient.asl") }
