# Course Outline

The course covers a series of topics in game theory.  In each case, we'll use modelling techniques that 
make it possible to explore the models themselves computationally and to use them for estimation.  Some exposure to python and julia is helpful, though the course is primarily about theoretical methods. When computational methods are used, they will be explained in class. 

Marking is traditional assignments an tests with an option to substitute projects for tests.  Plan for a March 6 midterm exam in class.

To make the most of the course, you should get used to using some basic software, if you haven't already.  Probably one of the most useful tools for prospective economists is [jupyter notebooks](https://jupyter.org/).  Its point is to allow you to learn to program interactively.  Instead of all the setup associated with writing and running a full program in a specific language, notebooks allow you to experiment with snipets of code.  This is great for finding news ways to analyze problems whether or not you consider yourself an empirical researcher.

 You can experimment without installing anything by using [https://ubc.syzygy.ca](https://ubc.syzygy.ca).  This gives you access to R and python.  Once you see what jupyter is doing, you'll want to install it on your own computer.  There are plenty of instructions in google.

 One good way to do it, is to use conda [https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html](https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html). Windows is similar.

 Since the julia programming language is popular at the vse, we'll make use of it.  You can add it to your jupyter lab installation by following [https://datatofish.com/add-julia-to-jupyter/](https://datatofish.com/add-julia-to-jupyter/) or its analog for windows or mac.

 There is a collection of notebooks you can use during the course.  Clone them from [https://github.com/michaelpetersubc/notebooks](https://github.com/michaelpetersubc/notebooks).


# The following is a partial list of topics. 

The readings will be updated frequently so check back here for changes.

## Theory, structural estimation, experiments

1. [Review of Bayesian Equilibrium](https://montoya.econ.ubc.ca/Econ600/bayesian.pdf)
  * [An introduction to computation - symbolics](https://github.com/michaelpetersubc/notebooks/blob/master/Econ306/directed_search/directed_search_incomplete_info_julia.ipynb)
  * [Reading on Directed Search](https://montoya.econ.ubc.ca/Econ600/directed_search.pdf)
6. Experiment - Ring Game, courtesty of Terri Kneeland - K-level reasoning and elementary structural estimation
  * [Paper](http://www.tkneeland.com/uploads/9/5/4/8/95483354/ecta11983.pdf)
  * [Results from the experiment](https://github.com/michaelpetersubc/notebooks/tree/master/Econ515/ring_game)
  * [a short note explaining the game](https://montoya.econ.ubc.ca/Econ306/terri_experiment.pdf)
2. Experiment - [Loss Aversion in the Ultimatum Game](https://montoya.econ.ubc.ca/Econ600/mike_reference_offer.pdf)
    * [Structural estimation in an experiment](https://github.com/michaelpetersubc/notebooks/tree/master/Econ515/ultimatum_game)
3. Auctions
  * [Theory Review](https://montoya.econ.ubc.ca/Econ600/auctions.pdf)
  * [Data - eBay computer Chips](https://github.com/michaelpetersubc/notebooks/tree/master/processors)
  * [Data - cameras on eBay](https://github.com/michaelpetersubc/notebooks/tree/master/eBay)
  * [Equal Priority Auctions](https://lihao.microeconomics.ca/sites/lihao.microeconomics.ca/files/content/research/Mike.pdf)
  * [Using computation to explore a theoretical model](https://github.com/michaelpetersubc/notebooks/blob/master/unobserved_mechanisms/calculate_equiibrium.ipynb)
4. Matching - coarse types
  * [Phd job market in economics](https://montoya.econ.ubc.ca/papers/markets/markets.pdf)
  * [Econjobmarket Network](https://sage.microeconomics.ca) - courtesy of Amedeus D'Souza
4.  Matching and algorithms
  * [Lecture Notes for deferred acceptance](http://montoya.econ.ubc.ca/Econ600/matching.pdf)
  * [Text version and a case study](http://montoya.econ.ubc.ca/Econ306/deferred_acceptance.pdf)  
  * [Vickrey Mechanisms and Matching games using the Hungarian algorithm](https://montoya.econ.ubc.ca/Econ514/hungarian.pdf)
