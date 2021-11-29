// Agent auctioneer in project JaCaMoExamples

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

//broadcast to all participants the begin of the auction
+!start <-  .broadcast(tell, auction(service, flight_ticket(paris,athens,"15/12/2015"))).

//doc .findall(term,query,result)
//term (variable or structure): the variable or structure whose instances will "populate" the list.
//query (logical formula): the formula used to find literals in the belief base; is has the same syntax as the plan context.
//result (list): the result list populated with found solutions for the query.

+bid(Service,_):
	.findall(b(V,A),bid(Service,V)[source(A)],L) &
	.length(L,4) //if the bids are 4, all the participants are done, lets decide the winner
	<- 
	.max(L,b(V,W));
	.print("Winner for ", Service, " is ", W, " with ", V);
	.broadcast(tell, winner(Service,W)).

{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$moiseJar/asl/org-obedient.asl") }
