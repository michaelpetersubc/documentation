# Preliminary Course Outline

The course consists of a series of topics in applied game theory.  The first part will illustrate how bayesian game theory can be used to do 
structural estimation.  The applications will involve models that you should have seen before in your previous classes.  The second half of the 
course will show how game theory has influenced computer science and illustrate some of the methods they have devised to enhance the applicability
of the economic models that you have already learned.

There is no textbook for the course, readings will be available online. There will be computation and data analysis used during the course.  It is
recommended that you use jupyter notebooks since they are a great way of experimenting in python and r.  We'll touch some computation that will require
math tools.  It is recommended that you install [sagemath using conda](https://doc.sagemath.org/html/en/installation/conda.html).  This will give you a basic 
computational mathematical tools and the abillity to use python.

Install the jupyterlab extension for sagemath and you will have a very nice development environment.  One way to do this is to activate the sage environment at your 
command line using conda, then `sage -i jupyterlab_widgets`, but suit yourself.  You can enable the R language, and octave through jupyterlab so that you have all the 
basic computer tools you need.

Lectures will be a combination of live and recorded sessions.  There will be extended office hours conducted online where I hang out on [Discord](https://discord.com).  I'll
provide the server location in class.

As the class is small enough, grading will be traditional, a mixture of assignments, a midterm (online) and a final.  You'll have the option of replacing these with indvidual
projects.

Boilerplate reading list stuff will be added shortly.

The following is a partial list of topics in no particular order that will be updated before the start of the course.

# Topics in Micro

1. [Review of Bayesian Equilibrium](https://montoya.econ.ubc.ca/Econ600/bayesian.pdf)
6. Experiment - Ring Game, Terri Kneeland
  * [Paper](http://www.tkneeland.com/uploads/9/5/4/8/95483354/ecta11983.pdf)
  * [jupyter notebook](https://montoya.econ.ubc.ca/Econ515/ring_game.slides.html)
  * [a short note explaining the game](https://montoya.econ.ubc.ca/Econ306/terri_experiment.pdf)
2. Experiment - [Ultimatum Game](https://montoya.econ.ubc.ca/Econ600/mike_reference_offer.pdf)
    * [jupyter notebook](https://montoya.econ.ubc.ca/Econ600/ultimatum_game_2.slides.html)
3. Auctions
  * [Theory](https://montoya.econ.ubc.ca/Econ600/auctions.pdf)
  * [Data - eBay computer Chips](tba)
  * [Data - cameras on eBay](tba)
4.  Matching
  * [Lecture Notes for deferred acceptance](http://montoya.econ.ubc.ca/Econ600/matching.pdf)
  * [Econjobmarket Network](https://montoya.econ.ubc.ca/Econ515/notebooks/ejm/econjobmarket.ipynb)
  * [Directed Search notebook (sagemath)](https://montoya.econ.ubc.ca/Econ600/notebooks/directed_search/directed_search_2.ipynb)
  * [Directed Search - large game theory](https://montoya.econ.ubc.ca/Econ600/large_games.pdf)
  * Hungarian Algorithm
3. Bayes Nash Equilibrium - Approximation
  * [Jason Hartline - worst case surplus](http://jasonhartline.com/MDnA/MDnA-chX.pdf)
10. Ranking Methods
  * [Axioms Characterizing the Google Page Rank](https://www.cse.huji.ac.il/~noam/econcs/p1-altman.pdf) Altman and Tenneholtz
  * check out the various jupyter notebooks associated with applying page rank to outcome data using the command `svn co https://montoya.econ.ubc.ca/svn-econ/Econ515/notebooks/ejm/`
  * [axioms for ranking journals](https://www.jstor.org/stable/3598842?seq=1#metadata_info_tab_contents) by Huerta and Volij May 2004 Econometrica
10. [Vizing Theorem](https://montoya.econ.ubc.ca/Econ600/vizing.pdf) - graph coloring with an application to scheduling
10. [Reverse Spectrum Auctions](https://www.youtube.com/watch?v=jf_2_XHrpmE&list=PLEGCF-WLh2RK6lq3iSsiU84rWVee3A-hz&index=38) A series of videos by
    Tim Roughgarden that you should be able to  understand at this point.