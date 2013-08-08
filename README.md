massey-seminar-aug13
====================

## Content
### presentation
Files to re-create the presentation for the seminar "From data to report - State-of-the art tools for streamlining data management, analysis and report production in ecological research".
It was given at the Ecology department on the 7th of August 2013 at Massey University, Palmerston North.  

### project_example 
Made-up example of a research project, to demonstrate the tools mentioned in the seminar.

Context: The length of a sample of individuals are taken in three different habitats and potential differences between these habitats are assessed.

First use: Just type "make" in a terminal in this folder, and the data will be created, the analysis conducted, and the report created.

Test: Make a change to the script simulating the data, or to the csv file already created. Re-run "make" and the changes should be refleced in the report.

## Get it
After installing GIT on your machine, go to the folder where you want the project to be installed and in a terminal (Ctrl+Esc then cmd.exe in Windows), type
`git clone https://github.com/yvanrichard/massey-seminar-aug13.git`

## Dependencies
For this to run, you need all this (don't worry, it's all free!):
- *GIT* to get this project and for version control (http://git-scm.com/)
- *R* for data manipulation, analysis, and plotting (http://cran.r-project.org/)
- R libraries (in R, just do `install.packages(c('sweave', 'ggplot2', 'xtable', 'plyr'))`)
  - *sweave* (to integrate R bits into the publication)
  - *ggplot2* (for nice plots)
  - *xtable* (for converting R tables into LaTeX)
  - *plyr* (for easy data manipulation)
- *LaTeX* for writing the publication (http://latex-project.org/ftp.html)
- *Beamer* for creating the presentation (https://bitbucket.org/rivanvx/beamer/wiki/Home)
