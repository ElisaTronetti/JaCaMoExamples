// Agent auctioneerNoWaitAllBids in project JaCaMoExamples

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

//broadcast to all participants the begin of the auction
+!start <-  
	.broadcast(tell, auction(service, flight_ticket(paris,athens,"15/12/2015"))); 
	.at("now + 10 seconds", {+!decide(flight_ticket(paris,athens,"15/12/2015"))}). 
	//after 10 seconds decide the winner, removed condition that all 4 participant participated
	
+!decide(Service)
   :  .findall(b(V,A),bid(Service,V)[source(A)],L)  // L is a list of all bids, e.g.: [b(77.7,alice), b(91.7,giacomo), ...]
   <- .max(L,b(V,W));
      .print("Winner for ", Service, " is ",W," with ", V, ". Options=",L);
      .broadcast(tell, winner(Service,W)).

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$moiseJar/asl/org-obedient.asl") }
