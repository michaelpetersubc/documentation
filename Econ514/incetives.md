# Course Outline

The course consists of a series of topics in applied game theory.  The goal is not so much to show you new theoretical techniques (though there are a couple), but to show you how you 
can modify the theoretical methods you have already learned to allow you to use computational methods in your own research. 

Often the basic models you have learned have to be modified to fit the particular problems you are interested in.  This can be a way to devise new theoretical approaches as well.

There is no textbook for the course, readings will be available online. Since you will be doing your own computation, you'll need some basic computer tools.  Almost all the examples use
either julia or python.  The best way to familiarise youself with the languages and how to use them is to use jupyter notebooks.  To begin, you can use the ubc implementation at [https://ubc.syzygy.ca](https://ubc.syzygy.ca/) to start experimenting with python (or R, though we won't use it during the course) if you have not already tried it.

You'll soon want to use julia, since it is popular for computation in economics.  You can find out about it at [https://www.jesseperla.com/publication/quantitative-econ-julia/](https://www.jesseperla.com/publication/quantitative-econ-julia/). It is very similar to python.  Find the current version at [https://julialang.org/downloads/](https://julialang.org/downloads/). Once you install it on your own computer, you can add jupyter lab to julia using the instructions at [https://datatofish.com/add-julia-to-jupyter/](https://datatofish.com/add-julia-to-jupyter/).  The jupyter notebook interface is really very useful for trying out code an learning how it works. 

We also be using some computer algebra. We'll mostly use a python library called SymPy.  You can read how to use it in julia at [https://www.math.csi.cuny.edu/~verzani/tmp/julia/symbolic.html](https://www.math.csi.cuny.edu/~verzani/tmp/julia/symbolic.html).

I won't have any formal office hours since you can get in touch with me pretty much anytime at [Discord](https://discord.com) where I hang out.  I'll
provide the server location in class.  When you join, please change your nickname on the server to your proper name so I can recognize you (you don't have to change your discord user name, you can have a custom name for yourself on every different server).

Thomas Chan is the ta for the course.  He is doing very computational research with auction theory.  Please use the text channels on discord to ask computer questions so your fellow students can help you.  And please help the others on the channel when you know some of the answers. Thomas and I will not act as computer tech support, you'll have to figure out most of your computer problems youself, as we did. 

Your mark will be based on two assignments and two projects.  Assignments are due January 31 and March 28.  Projects are due February 21 and the last day of class.  Assignments are each worth 20 marks.  The first project is worth 20 marks, and the final project 40 marks.  You should be able to do the projects using data available in the notes and worksheets associated with the course.  You can also do a theoretical project.  In either case you'll have to get approval for your projects before hand.  Students will have the opportunity to present their projects in class while they are in progress.


# Legal stuff

Sorry, wish this wasn't necessary.

It is the policy of the VSE to report all violations of UBC’s standards for academic honesty to the office of the Dean of Arts. You must read these policies a [http://www.calendar.ubc.ca/Vancouver/index.cfm?tree=3,286,0,0](http://www.calendar.ubc.ca/Vancouver/index.cfm?tree=3,286,0,0) In addition to the explicitly stated violations (for example, plagiarism), any student who hires a tutor/editor to help with any portion of their work will be given an automatic grade of zero on their final paper and/or annotated bibliography. Further penalties, in addition to any grade penalties that might apply (such as a zero grade on your final paper), may be levied by the President's Advisory Committee on Student Discipline. Those further penalties could include a notation on your transcript indicating that you have committed an academic offence, failure of the course, and/or suspension from the university. 

Notice in particular that UBC prohibits any student from hiring a tutor or editor to help them with their work.

Submitting a project or assignment that has been completed  by someone else is considered plagiarism. (It would also be a complete waste of time at this point in your career.

# The following is a partial list of topics. 

The readings will be updated frequently so check back here for changes.

## Theory, structural estimation, experiments

1. [Review of Bayesian Equilibrium](https://montoya.econ.ubc.ca/Econ600/bayesian.pdf)
  * [Directed Search notebook (sagemath)](https://github.com/michaelpetersubc/notebooks/blob/master/Econ306/directed_search/directed_search_2.ipynb)
  * [Reading on Directed Search](https://montoya.econ.ubc.ca/Econ600/directed_search.pdf)
6. Experiment - Ring Game, courtesty of Terri Kneeland - first look at elementary structural estimation
  * [Paper](http://www.tkneeland.com/uploads/9/5/4/8/95483354/ecta11983.pdf)
  * [On github](https://github.com/michaelpetersubc/notebooks/tree/master/Econ515/ring_game)
  * [a short note explaining the game](https://montoya.econ.ubc.ca/Econ306/terri_experiment.pdf)
2. Experiment - [Ultimatum Game](https://montoya.econ.ubc.ca/Econ600/mike_reference_offer.pdf)
    * [On Github](https://github.com/michaelpetersubc/notebooks/tree/master/Econ515/ultimatum_game)
3. Auctions
  * [Theory](https://montoya.econ.ubc.ca/Econ600/auctions.pdf)
  * [Data - eBay computer Chips](https://github.com/michaelpetersubc/notebooks/tree/master/processors)
  * [Data - cameras on eBay](https://github.com/michaelpetersubc/notebooks/tree/master/eBay)
4. Matching - coarse types
  * [Phd job market in economics](https://montoya.econ.ubc.ca/papers/markets/markets.pdf)
  * [Econjobmarket Network](https://sage.microeconomics.ca) - courtesy of Amedeus D'Souza
4.  Matching and algorithms
  * [Lecture Notes for deferred acceptance](http://montoya.econ.ubc.ca/Econ600/matching.pdf)
  * [Text version and a case study](http://montoya.econ.ubc.ca/Econ306/deferred_acceptance.pdf)  
  * [Hungarian Algorithm](https://montoya.econ.ubc.ca/Econ514/hungarian.pdf)
10. [Vizing Theorem](https://montoya.econ.ubc.ca/Econ600/vizing.pdf) - graph coloring with an application to scheduling
10. [Reverse Spectrum Auctions](https://www.youtube.com/watch?v=jf_2_XHrpmE&list=PLEGCF-WLh2RK6lq3iSsiU84rWVee3A-hz&index=38) A series of videos by
    Tim Roughgarden that you should be able to  understand at this point.