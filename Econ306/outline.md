### Outline

A course in microeconomic theory for honors students.  The course is primarly an illustration of how game theory is used in various economic applications. A series of readings is provided below. To prepare for the course, make sure you understand the mathematics that is described in the Math Tutorial below. There is no required textbook for the course. Many of the lectures cover material that is covered in Preston McAfee's online text, but the readings that are listed (and will be listed) here are all that is required for the course. You can get the pdf version of McAfee's book at [http://www.mcafee.cc/Introecon/IEA.pdf](http://www.mcafee.cc/Introecon/IEA.pdf).  There is a printed version with nicer graphs and additional problems that you can get from [http://www.introecon.com](http://www.introecon.com), but you shouldn't need this, and we will only follow a small bit of the book.

All the lectures are online.  Some of the lectures will be pre-recorded.

As the class is small, grading will be traditional. There will be four assignments, due dates tba.  You will need to hand in completed versions of the assignments, then you will be expected to correct your exam and resubmit it the week later.  Assignments are worth 20% of the final mark.  The midterm and final are each worth 40% of the final mark.  The midterm will be held is tba.  Exams will be held on line and will be envigilated.

You will get no credit for missed assignments.  Missed Miderm tests will result in weight being shifted to the final exam.  In either case, you must notify me by the day after the exam.  A missed final exam will be rewritten in the next available sitting, probably mid to late summer.



### Math Preparation 

* This link leads to a math tutorial written by Martin Osborne at U of Toronto. It contains most of what you will need to know about math as an economics student. Browse through to refresh your knowledge, then go back to it when you encounter a mathematical concept that you don't understand. [Martin Osborne&#39;s Tutorial](http://mjo.osborne.economics.utoronto.ca/index.php/tutorial/index/1/int/i).
* You will probably find it helpful to install some software on your computer.  This is primarily a theory course, but in a couple of places you'll see some data
  will help you understand many of the concepts.  We'll also use some mathematics software that you'll find useful pretty much whenever you are try to find theoretical solutioos to problems. You can find python and R on  [https://syzygy.ca](https://syzygy.ca).  However, you'll find it more useful to install jupyter notebooks using [sagemath](https://sagemath.org) on your own computer.  This will give you a symbolic algegra program similar to mathematica or maple and a python kernel.  If you install jupyterlab you'll have access to a symbolic math program, python, a latex editor and a markdown editor, all in a tab in your web browser.  This course outline was written in a jupyter notebook. Notebooks are interactive so you can experiment with programming at the same time that you are learning economics. You'll have access to a number of jupyter notebooks used in the course on [Github](https://github.com).  Since github displays notebooks very nicely, I'll provide some direct links to course notebooks. 

### Basic Game Theory

The first part of the course reviews basic game theory.  It then proceeds to show you how this theory is used in some very well known economics problems.

1. Elementary stuff 
  * [Matrix Games](http://montoya.econ.ubc.ca/Econ306/mcafee_matrix_games.pdf) 
  * [An Economics Experiment - courtesy of Terri Kneeland](https://github.com/michaelpetersubc/notebooks/blob/master/Econ515/ring_game/ring_game.ipynb).  To get the data from this experiment, you'll need to copy it directly from [https://github.com/michaelpetersubc/notebooks/blob/master/Econ515/ring_game/ring_game.ipynb](https://github.com/michaelpetersubc/notebooks/tree/master/Econ515/ring_game).  
  *  [Price of Anarchy](http://montoya.econ.ubc.ca/Econ306/price_of_anarchy.pdf). Using game theory to start to think about computer networks.
  * [A jupyter notebook version of the price of anarchy](https://github.com/michaelpetersubc/notebooks/blob/master/Econ306/price_of_anarchy/306_anarchy.ipynb)
  * [The Centipede game](http://montoya.econ.ubc.ca/Econ306/centipede_game.pdf) A simple game of imperfect information
  * You may want to check Section 7.2 -7.4 in McAfee for a discussion of subgame perfect equilibrium.
  * A discussion of [Directed Search](http://montoya.econ.ubc.ca/Econ306/directed_search.pdf) which will show you how to use subgame perfection and incomplete information to discuss a somewhat macro-ish topic.

2. Matching and your first look at algorithms in economics
  * [Deferred Acceptance](http://www.nber.org/papers/w13225.pdf) - a paper by Al Roth describing the history, theory and practice of this famous algorithm
  * [Theory and Mechanics of the deferred acceptance algorithm](http://montoya.econ.ubc.ca/Econ306/deferred_acceptance.pdf)
  * [The Hungarian Algorithm for task allocation and matching with transferable utility](https://montoya.econ.ubc.ca/Econ514/hungarian.pdf) (this file is preliminary)
  * [A very nice dash app courtesty of Amedeus D'Souza](https://sage.microeconomics.ca) that will show you how matching works in the market for economics ph'd students.

3. Auctions - Theory with Data
  * [Position Auctions](http://montoya.econ.ubc.ca/Econ306/position.pdf) - pricing google sponsored links (sort of)
  * [Various well know auctions](http://montoya.econ.ubc.ca/Econ600/auction_reading.pdf)
  * [The discussion in McAfee since that is what he is famous for](http://montoya.econ.ubc.ca/Econ306/auctions_mcafee.pdf)
  * [Double Auctions](http://montoya.econ.ubc.ca/Econ306/double_auctions.pdf) - an auction as a market
  * [Browse Data from eBay processor auctions in 2001](https://montoya.econ.ubc.ca/eBay/main)
  * [Counterfactual exercise](https://github.com/michaelpetersubc/notebooks/blob/master/processors/ebay-week6.ipynb) courtesy of Wenxin Ma.
  * [Camera data from eBay](https://github.com/michaelpetersubc/notebooks/tree/master/eBay).  This collection has camera data and a couple of notebooks that start to analyze it.