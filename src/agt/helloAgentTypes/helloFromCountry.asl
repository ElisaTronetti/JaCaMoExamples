// Agent helloFromCountry in project JaCaMoExamples

/* Initial beliefs and rules */
//these are the same thing as the facts in prolog.
//in JaCaMo is called Belief Base (BB).
msg(fr,"Bonjour").
msg(br,"Bom dia").
msg(it,"Buon giorno").
msg(us,"Good morning").

/* Initial goals */

!start.

/* Plans */
//if at start there is a belief country(C) and there is a belief in the BB that has C, .print the greet matching
+!start: country(C) & msg(C,M) <- .print(M).
+!start : true <- .print("No greeting found with your country").

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$moiseJar/asl/org-obedient.asl") }
