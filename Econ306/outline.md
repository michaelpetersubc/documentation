### Outline

This course is an advanced course on microeconomic theory and how to use it. The first part of the course will be a fairly insense discussion of game theory from basics through Bayesian equilibrium.  You'll need a game theoretic approach to understand most modern topics in microeconomics.  It is important to understand what it game theory adds to what you learned in econ 101.

The second half of the course is focused on doing things with the theory.  We'll go over applications in experimental economics, auctions, matching, and trading networks.  We'll also discuss some more advanced matching algorithms.  In each case well go through the core theory and show how to take it all the way through available data so you can see the kinds of things you can accomplish with it.

Since this has traditionally been an honors class with limited enrollment, you'll get lots of attention as you proceed. Accordingly at lot will be expected of you.  Many things will be new.  

To start, notice that nothing about this section of the course can be found on canvas.  The primary means of interaction during the course will be on discord.  I'll post links to readings, and all course notices and assignments there. Get youself an account if you don't already have one at [https://discord.com](https://discord.com).  You'll get a couple of invitations to join the Econ306 server before the first class. 

The discord server will give you instant access to me, and connect you with some of the past students from this course.  Past students are usually happy to provide information that will help you through.  Many of the students who are now predocs at other universities still use discord.  Many of you will be interested in that option as you decide what to do once you graduate.

I won't hold office hours for this course.  Instead you can arrange to meet with me pretty much anytime we are both free by sending me a message on discord.  We can meet either virtually using the voice channel on discord, or in person.  You'll fihd that you cannot be passive in Econ306 - the onus is on you to follow up with me to make sure you understand the concepts and methods we'll be using.

To make the theory come alive for you we'll need to try it with some data.  You can't avoid software if you want to do that.  One of the most useful tools for people who need to make use of data but who otherwise aren't computer programmers is jupyter notebooks.  UBC has an online version of jupyter notebooks you can use at [https://ubc.syzygy.ca](https://ubc.syzygy.ca).  It will give you access to 2 languages, python and R.  Python is for computation and is used when you eventually do ai.  R is statistical software.  You'll use both in your other courses if you haven't already. Give that a try to see how it works.

At some point, you'll decide you need to have jupyter notebooks on your own computer.
I have found the best way to install it is to use conda.  For example, for windows [https://docs.conda.io/projects/conda/en/latest/user-guide/install/windows.html](https://docs.conda.io/projects/conda/en/latest/user-guide/install/windows.html).  You can find the installation instructions for mac and linux easily by looking it up.  Conda will create and environment in which you can install software for your own user account so you won't need root access and won't have to worry about messing up your system files.

I'll be showing you how to use notebooks to learn about game theory.  I'll be using the [julia programming language](https://julialang.org/).  It is similar to python but seems to be designed for economists.  You can install julia using conda making it quite easy to incorporate into jupyter notebooks on your own computer.

When you manage to install jupyter notebooks you can find a whole collection of notebooks including data and lecture notes from [github](https://github.com/michaelpetersubc/notebooks/)

Grading is traditional. There will be about 6 assignments, approximately one every two week, due dates tba.  Assignments will be posted in the announcements channel on discord.  You will need to hand in completed versions of the assignments, then you will be expected to correct your assignment and resubmit your corrected versions one week later.  You will hand in the assignments through discord.  

The assignments won't be graded in the traditional way.  The ta will verify that you have completed them.  Then after the answers are explained in tutorial, you need to submit a corrected version. The ta will check to make sure you have updated your answers correctly the following week.  

There will be no answer keys, so it is important that you make sure you understand the questions and answers.  Make an appointment with me to discuss them if you don't. Assignments are worth 30%.  

There will be an in class midterm exam at some point around the midterm break.  The midterm will count for another 30% of your final mark. The final exam will count for the other 40% of your mark.  

The final will be in person in the usual university exam period.  The date is tba. 

You will get no credit for missed assignments - that means both your original answers and your corrections.  A missed final exam will be rewritten in the next available sitting, probably mid to late summer.  If you miss the scheduled final you must submit a request for a an [academic concession](https://www.arts.ubc.ca/degree-planning/academic-performance/academic-concession/).  If you miss the midterm, then you final will count for 70% of your mark. 


# Legal stuff

It is the policy of the VSE to report all violations of UBC’s standards for academic honesty to the office of the Dean of Arts. You must read these policies a [http://www.calendar.ubc.ca/Vancouver/index.cfm?tree=3,286,0,0](http://www.calendar.ubc.ca/Vancouver/index.cfm?tree=3,286,0,0) In addition to the explicitly stated violations (for example, plagiarism), any student who hires a tutor/editor to help with any portion of their work will be given an automatic grade of zero on their final paper and/or annotated bibliography. Further penalties, in addition to any grade penalties that might apply (such as a zero grade on your final paper), may be levied by the President's Advisory Committee on Student Discipline. Those further penalties could include a notation on your transcript indicating that you have committed an academic offence, failure of the course, and/or suspension from the university. 

Notice in particular that UBC prohibits any student from hiring a tutor or editor to help them with their work. Be very careful about copying and pasting material from the internet into your assignments as this will typically be treated as plagiarism.


### Math Preparation 

This link leads to a math tutorial written by Martin Osborne at U of Toronto. It contains most of what you will need to know about math as an economics student. Browse through to refresh your knowledge, then go back to it when you encounter a mathematical concept that you don't understand. [Martin Osborne&#39;s Tutorial](http://mjo.osborne.economics.utoronto.ca/index.php/tutorial/index/1/int/i).

We'll also use Martin's textbook [Models in Microeconomic Theory](https://www.openbookpublishers.com/books/10.11647/obp.0204).  this is a free textbook, so you shouldn't buy it.  We won't use it very much, but it has many problem sets and examples that we'll refer to.

The reading list below will be updated as the course goes on.

### Basic Game Theory

1. Basic Concepts in Game Theory - Chapter 15 in O&R page 217
  * [Normal form games](https://montoya.econ.ubc.ca/Econ306/game_theory.pdf) 
  * Price of Anarchy [reading](https://montoya.econ.ubc.ca/Econ306/price_of_anarchy.pdf) [notebook](https://github.com/michaelpetersubc/notebooks/blob/master/Econ306/price_of_anarchy/anarchy_calculations.ipynb)
  * [Directed Search](http://montoya.econ.ubc.ca/Econ306/directed_search.pdf)
    [notebook](https://github.com/michaelpetersubc/notebooks/blob/master/Econ306/directed_search/directed_search_julia.ipynb)

2. Extensive Games Chapter 16 in O&R, page 257
  * The centipede game - normal vs extensive form
  * Directed Search again
 

### Applications

1. Experiments and a simple introduction to structural estimation
   * [An Economics Experiment - courtesy of Terri Kneeland](https://github.com/michaelpetersubc/notebooks/blob/master/Econ515/ring_game/ring_game.ipynb).  To get the data from this experiment, you'll need to copy it directly from [https://github.com/michaelpetersubc/notebooks/blob/master/Econ515/ring_game/ring_game.ipynb](https://github.com/michaelpetersubc/notebooks/tree/master/Econ515/ring_game).  

2. Frictional Trading in Labor Markets, Trading Networks
  * A discussion of [Directed Search](http://montoya.econ.ubc.ca/Econ306/directed_search.pdf) which will show you how to use subgame perfection and incomplete information to discuss a somewhat macro-ish topic.
  * [Reverse Directed Search](https://montoya.econ.ubc.ca/papers/markets/markets.pdf)  Just read the introduction.  I'll provide a much simpler version of the math shortly by looking at a special case.
  * [Notebooks to accompany directed search](https://github.com/michaelpetersubc/notebooks/tree/master/Econ306/directed_search)

2. Algorithms in economics
  * [Deferred Acceptance](http://www.nber.org/papers/w13225.pdf) - a paper by Al Roth describing the history, theory and practice of this famous algorithm
  * [Theory and Mechanics of the deferred acceptance algorithm](http://montoya.econ.ubc.ca/Econ306/deferred_acceptance.pdf)
  * [Competitive equilibrium](https://montoya.econ.ubc.ca/Econ514/competitive_equilibrium.pdf)
  * [The Hungarian Algorithm - matching with transferable utility](https://montoya.econ.ubc.ca/Econ514/hungarian.pdf)
  * [Julia version of the algorithm by James Yu](https://github.com/jbrightuniverse/HungarianAlg.jl)
