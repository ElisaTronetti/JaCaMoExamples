// Agent auctioneer in project JaCaMoExamples

/* Initial beliefs and rules */

/* Initial goals */

!do_auction("a1","flight_ticket(paris,athens,date(15,12,2015))").
!do_auction("a2","flight_ticket(athens,paris,date(18,12,2015))").

/* Plans */

+!do_auction(Id,P)
   <- // creates a scheme to coordinate the auction
      .concat("sch_",Id,SchName);
      createScheme(SchName, doAuction, SchArtId);
      setArgumentValue(auction,"Id",Id)[artifact_id(SchArtId)];
      setArgumentValue(auction,"Service",P)[artifact_id(SchArtId)];
      .my_name(Me);
      setOwner(Me)[artifact_id(SchArtId)];  // I am the owner of this scheme!
      focus(SchArtId);
      addScheme(SchName);  // set the group as responsible for the scheme
      commitMission(mAuctioneer)[artifact_id(SchArtId)].

/* plans for organizational goals */

+!start[scheme(Sch)]                        // plan for the goal start defined in the scheme
   <- ?goalArgument(Sch,auction,"Id",Id);   // retrieve auction Id and service description S
      ?goalArgument(Sch,auction,"Service",S);
      .print("Start scheme ",Sch," for ",S);
      makeArtifact(Id, "auction.AuctionArtifact", [], ArtId); // create the auction artifact
      Sch::focus(ArtId);  // place observable properties of ArtId into a name space        
      Sch::start(S).

+!decide[scheme(Sch)]
   <- Sch::stop.

+NS::winner(W) : W \== no_winner
   <- ?NS::task(S);
      ?NS::best_bid(V);
      .print("Winner for ", S, " is ",W," with ", V).

+oblUnfulfilled(obligation(Ag,_,done(Sch,bid,Ag),_ ))[artifact_id(AId)]  // it is the case that a bid was not achieved
   <- .print("Participant ",Ag," didn't bid on time!");
       admCommand("goalSatisfied(bid)")[artifact_id(AId)].
       
       
{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$jacamoJar/templates/org-obedient.asl") }
