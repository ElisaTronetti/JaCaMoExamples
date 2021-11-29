# JaCaMoExamples

## Introduction

This repository has been made during my academic studies, in order to explore better [JaCaMo](http://jacamo.sourceforge.net/).  

JaCaMo is a framework for Multi-Agent Programming that combines three different technologies: 
- [Jason](http://jason.sourceforge.net/doc/): for programming autonomous agents
- [Cartago](http://jacamo.sourceforge.net/cartago/doc/): for programming environment artifacts
- [Moise](http://moise.sourceforge.net/doc/): for programming multi-agent organizations

The documentation of JaCaMo is made basically just by examples, so I decided to create a repository that has all the example commented. I also added a few example made by me.

## Requirements

To run this project you need:
- JVM >= 8
- Gradle
- Eclipse IDE

To make changes you need to install the plug-in (only available in Eclipse IDE); you can follow this [tutorial](http://jacamo.sourceforge.net/doc/install.html) to install it properly.


## How to run

To run the example from the IDE you need to open the JaCaMo Navigator (given by the plug-in previously installed).  
Then open the file .jcm you are interested in and just run it from the IDE.  

You can also use Gradle by command line:  
``` gradle run ``` 

## Examples organization
Every example is annotated and you can comment and uncomment what you want to try.  

The repository has four .jcm files:
1. testJaCaMo: contains a basic overview of JaCaMo in all of its aspects. This code follows the code in this [tutorial](http://jacamo.sourceforge.net/tutorial/hello-world/).  


2. auctionCoodinationByMessages: it goes a little bit deeper in the coordination between agents by messages. Based on the Part I of this [tutorial](http://jacamo.sourceforge.net/doc/tutorials/coordination/readme.html).

3. auctionCoordinationByEnvironment: 
you will find more examples using the environment as mean of coordination between agents. Based on the Part II of this [tutorial](http://jacamo.sourceforge.net/doc/tutorials/coordination/readme.html).

4. auctionCoordinationByOrganization:
Using more Moise, you can find the implementation of an organization that tells to the agents their role and how to achieve a common goal. The [tutorial](http://jacamo.sourceforge.net/doc/tutorials/coordination/readme.html) of this example can be found in the Part III.

## Thanks
I hope that you will find these working examples as useful as they are for me.  
If you have more working example that you think that are important or you want to correct some errors, feel free to send a pull request.  

Bye.