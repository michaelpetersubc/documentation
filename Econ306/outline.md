### Outline

This year a shortened version of the usual honors course in microeconomic theory.  Since you have already covered the core theory with Prof.  Severinov, we'll spend most of the time on applications.  Hopefully by the end of the course you'll get some idea of how you can use the theory you've learned into part of your regular practice as an economist, no matter what field you eventually to choose to be part of.
   
You are honors students, the class is small, you'll get lots of attention as you proceed. Accordingly at lot will be expected of you.  Many things will be new.  

To start, notice that nothing about this section of the course can be found on canvas.  The primary means of interaction during the course will be on discord.  I'll post links to readings, and all course notices and assignments there. Get youself an account if you don't already have one at [https://discord.com](https://discord.com).  You'll get a couple of invitations to join the Econ306 server before the first class. 

The discord server will give you instant access to me, and connect you with some of the past students from this course.  Past students are usually happy to provide information that will help you through.  Many of the students who are now predocs at other universities still use discord.  Many of you will be interested in that option as you decide what to do once you graduate.

I won't hold office hours for this course.  Instead you can arrange to meet with me pretty much anytime we are both free by sending me a message on discord.  We can meet either virtually using the voice channel on discord, or in person.  You'll fihd that you cannot be passive in Econ306 - the onus is on you to follow up with me to make sure you understand the concepts and methods we'll be using.

To make the theory come alive for you we'll need to try it with some data.  You can't avoid software if you want to do that.  One of the most useful tools for people who need to make use of data but who otherwise aren't computer programmers is jupyter notebooks.  UBC has an online version of jupyter notebooks you can use at [https://ubc.syzygy.ca](https://ubc.syzygy.ca).  It will give you access to 2 languages, python and R.  Python is for computation and is used when you eventually do ai.  R is statistical software.  You'll use both in your other courses if you haven't already.

I'll also use the julia language, mostly for illustration.  It isn't particularly hard to add julia to your jupyterlab installation.  You can google the instructions.

You can install jupyterlab on your own computer.  I have found the best way to do it is to use conda.  For example, for windows [https://docs.conda.io/projects/conda/en/latest/user-guide/install/windows.html](https://docs.conda.io/projects/conda/en/latest/user-guide/install/windows.html).  You can find the installation instructions for mac and linux easily by looking it up.  Conda will create and environment in which you can install software for your own user account so you won't need root access and won't have to worry about messing up your system files.

Grading is traditional. There will likely be three assignments, due dates tba.  Assignments will be posted in the announcements channel on discord.  You will need to hand in completed versions of the assignments, then you will be expected to correct your assignment and resubmit your corrected versions one week later.  You will hand in the assignments through discord.  

The assignments won't be graded in the traditional way.  The ta will verify that you have completed them.  Then after the answers are explained in tutorial, the ta will check to make sure you have updated your answers correctly the following week.  

There will be no answer keys, so it is important that you make sure you understand the questions and answers.  Make an appointment with me to discuss them if you don't. Assignments are worth 40% of the final mark for this 6 week session.  The final exam will count for 60% of your mark in this session.  

The final will be in person in the usual university exam period.  The date is tba. 

You will get no credit for missed assignments - that means both your original answers and your corrections.  A missed final exam will be rewritten in the next available sitting, probably mid to late summer.  If you miss the scheduled final you must submit a request for a an [academic concession](https://www.arts.ubc.ca/degree-planning/academic-performance/academic-concession/). 


# Legal stuff

It is the policy of the VSE to report all violations of UBC’s standards for academic honesty to the office of the Dean of Arts. You must read these policies a [http://www.calendar.ubc.ca/Vancouver/index.cfm?tree=3,286,0,0](http://www.calendar.ubc.ca/Vancouver/index.cfm?tree=3,286,0,0) In addition to the explicitly stated violations (for example, plagiarism), any student who hires a tutor/editor to help with any portion of their work will be given an automatic grade of zero on their final paper and/or annotated bibliography. Further penalties, in addition to any grade penalties that might apply (such as a zero grade on your final paper), may be levied by the President's Advisory Committee on Student Discipline. Those further penalties could include a notation on your transcript indicating that you have committed an academic offence, failure of the course, and/or suspension from the university. 

Notice in particular that UBC prohibits any student from hiring a tutor or editor to help them with their work. Be very careful about copying and pasting material from the internet into your assignments as this will typically be treated as plagiarism.


### Math Preparation 

This link leads to a math tutorial written by Martin Osborne at U of Toronto. It contains most of what you will need to know about math as an economics student. Browse through to refresh your knowledge, then go back to it when you encounter a mathematical concept that you don't understand. [Martin Osborne&#39;s Tutorial](http://mjo.osborne.economics.utoronto.ca/index.php/tutorial/index/1/int/i).


### Basic Game Theory

This was covered in the first 6 weeks.

The first part of the course reviews basic game theory.  

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
