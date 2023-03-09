### Outline

A course in microeconomic theory for honors students.  The course is primarly an illustration of how game theory is used in various economic applications. A series of readings is provided below. To prepare for the course, make sure you understand the mathematics that is described in the Math Tutorial below. There is no required textbook for the course. Many of the lectures cover material that is covered in Preston McAfee's online text, but the readings that are listed (and will be listed) here are all that is required for the course. You can get the pdf version of McAfee's book at [https://mc4f.ee/Papers/Introecon/](https://mc4fee/Papers/Introecon/).  

Since the honors course is the typical route to the honors thesis, the course is designed to help you learn how to use microeconomic theory when you do your thesis.
To accomplish this, we'll be especially interested in understanding how some of the most basic ideas in microeconomics and game theory are reflected in data. We'll be using some very simple data analysis.  We'll also make use of computer algebra to some degree.  You can help yourself prepre by learning how to use jupyter notebooks.  UBC has an online version of jupyter notebooks you can use at [https://ubc.syzygy.ca](https://ubc.syzygy.ca).  It will give you access to 2 languages, python and R. We'll use a bit of python when we illustrate the theory.  You'll be using them in your other courses as well.

You can install jupyterlab on your own computer.  I have found the best way to do it is to use conda.  For example, for windows [https://docs.conda.io/projects/conda/en/latest/user-guide/install/windows.html](https://docs.conda.io/projects/conda/en/latest/user-guide/install/windows.html).  You can find the installation instructions for mac and linux easily by looking it up.  Conda will create and environment in which you can install software for your own user account so you won't need root access and won't have to worry about messing up your system files.

As the class is small, grading will be traditional. There will be four assignments, due dates tba.  You will need to hand in completed versions of the assignments, then you will be expected to correct your assignment and resubmit your corrected version the week later.  Assignments are worth 20% of the final mark.  The midterm and final are each worth 40% of the final mark.  The midterm will be held in the usual class time on March 2.  The final exam will be held during the regular university exam period. 

One of the primary means of interaction during the cours will be on discord.  I'll post course notices and assignments there.  There will be no regularly set office hours, but you can contact me any time on discord to set up a meeting.  We can also meet online using discord if you want.  Get youself an account if you don't already have one at [https://discord.com](https://discord.com).  The server will connect you with some of the past students from the course.  They are usually happy to provide information that will help you through.  There is lots of information about predocs for example.  You may also be able to talk to some students who are now doing predocs.

The discord server supports math with latex, which you'll need to learn if you go on to grad school. I'll send you the link to the honors server before the class starts.   The ta for the course will be Igor Carreira, who is also ta for 397.  He will be available on discord, but his exact schedule is yet to be arranged.


You will get no credit for missed assignments.  Missed Miderm tests will result in weight being shifted to the final exam.  In either case, you must notify me by the day after the exam.  A missed final exam will be rewritten in the next available sitting, probably mid to late summer.


# Legal stuff

It is the policy of the VSE to report all violations of UBC’s standards for academic honesty to the office of the Dean of Arts. You must read these policies a [http://www.calendar.ubc.ca/Vancouver/index.cfm?tree=3,286,0,0](http://www.calendar.ubc.ca/Vancouver/index.cfm?tree=3,286,0,0) In addition to the explicitly stated violations (for example, plagiarism), any student who hires a tutor/editor to help with any portion of their work will be given an automatic grade of zero on their final paper and/or annotated bibliography. Further penalties, in addition to any grade penalties that might apply (such as a zero grade on your final paper), may be levied by the President's Advisory Committee on Student Discipline. Those further penalties could include a notation on your transcript indicating that you have committed an academic offence, failure of the course, and/or suspension from the university. 

Notice in particular that UBC prohibits any student from hiring a tutor or editor to help them with their work. Be very careful about copying and pasting material from the internet into your assignments as this will typically be treated as plagiarism.


### Math Preparation 

This link leads to a math tutorial written by Martin Osborne at U of Toronto. It contains most of what you will need to know about math as an economics student. Browse through to refresh your knowledge, then go back to it when you encounter a mathematical concept that you don't understand. [Martin Osborne&#39;s Tutorial](http://mjo.osborne.economics.utoronto.ca/index.php/tutorial/index/1/int/i).


### Basic Game Theory

The first part of the course reviews basic game theory.  It then proceeds to show you how this theory is used in some very well known economic problems.

1. Elementary stuff 
  * [Matrix Games](http://montoya.econ.ubc.ca/Econ306/mcafee_matrix_games.pdf) 
  * [An Economics Experiment - courtesy of Terri Kneeland](https://github.com/michaelpetersubc/notebooks/blob/master/Econ515/ring_game/ring_game.ipynb).  To get the data from this experiment, you'll need to copy it directly from [https://github.com/michaelpetersubc/notebooks/blob/master/Econ515/ring_game/ring_game.ipynb](https://github.com/michaelpetersubc/notebooks/tree/master/Econ515/ring_game).  
  *  [Price of Anarchy](http://montoya.econ.ubc.ca/Econ306/price_of_anarchy.pdf). Using game theory to start to think about computer networks.
  * [A jupyter notebook version of the price of anarchy](https://github.com/michaelpetersubc/notebooks/blob/master/Econ306/price_of_anarchy/306_anarchy.ipynb)
  * [The Centipede game](http://montoya.econ.ubc.ca/Econ306/centipede_game.pdf) A simple extensive form game.
  * You may want to check Section 7.2 -7.4 in McAfee for a discussion of subgame perfect equilibrium.
  * A discussion of [Directed Search](http://montoya.econ.ubc.ca/Econ306/directed_search.pdf) which will show you how to use subgame perfection and incomplete information to discuss a somewhat macro-ish topic.

2. Matching and your first look at algorithms in economics
  * [Deferred Acceptance](http://www.nber.org/papers/w13225.pdf) - a paper by Al Roth describing the history, theory and practice of this famous algorithm
  * [Theory and Mechanics of the deferred acceptance algorithm](http://montoya.econ.ubc.ca/Econ306/deferred_acceptance.pdf)
  * [Competitive equilibrium](https://montoya.econ.ubc.ca/Econ514/competitive_equilibrium.pdf)
  * [The Hungarian Algorithm for task allocation and matching with transferable utility](https://montoya.econ.ubc.ca/Econ514/hungarian.pdf)
  * [A very nice dash app courtesty of Amedeus D'Souza](https://sage.microeconomics.ca) that will show you how matching works in the market for economics ph'd students.

3. Auctions - Theory with Data
  * [Position Auctions](http://montoya.econ.ubc.ca/Econ306/position.pdf) - pricing google sponsored links (sort of)
  * [Various well known auctions](http://montoya.econ.ubc.ca/Econ600/auction_reading.pdf)
  * [The discussion in McAfee since that is what he is famous for](http://montoya.econ.ubc.ca/Econ306/auctions_mcafee.pdf)
  * [Double Auctions](http://montoya.econ.ubc.ca/Econ306/double_auctions.pdf) - an auction as a market
  * [Browse Data from eBay processor auctions in 2001](https://montoya.econ.ubc.ca/eBay/main)
  * [Counterfactual exercise](https://github.com/michaelpetersubc/notebooks/blob/master/processors/ebay-week6.ipynb) courtesy of Wenxin Ma.
  * [Camera data from eBay](https://github.com/michaelpetersubc/notebooks/tree/master/eBay).  This collection has camera data and a couple of notebooks that start to analyze it.