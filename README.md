Important Note
--------------
This template is unsupported and possibly out of date.  It may, or may not, meet the guidelines provided
by Qatar University.  If you use this, you are on your own to make sure your final product conforms to
the prescribed format.

I've been informed that the there is [another QU Engineering LaTeX template available](https://github.com/Naheel-Azawy/qu-tad-template).
That one may be more accurate and up to date.

Quick Start
-----------
1. Download the latest copy of the template from [here](https://github.com/rriley/qu-thesis/archive/master.zip).
2. Unzip it.
3. Edit thesis.tex, filling in the required information.
4. Add your thesis material.
5. Submit, defend, deposit, graduate!

Intro
-----
This project is a latex template for the Qatar University thesis format.
The goal is to allow QU graduate students to have an easy way to put
their thesis into the correct format.

This template is not an official from QU, so I make no guarantees that it
will comply with the format.  That said, I have done my best to follow
the guidelines described by the Office of the Vice President of Academic
Affairs, and I believe it follows the guidelines correctly.  In addition,
multiple students have graduated using this template.
You need to be sure that you check the [guidlines](http://www.qu.edu.qa/offices/vpcao/graduates/)
for a QU thesis and that your final output matches.

Margins
-------
This template uses a 1.5" margin on the left and 1.25" on all other sides.
The 1.5" margin is to allow for proper binding.

When printing your thesis, make sure to choose "None" from page scaling,
otherwise additional margins will be added when you print.  (Which would be
bad.)  Also make sure that the printer knows you are printing on A4 and not
letter.  (Many printer drivers assume letter unless you configure them 
otherwise.)

This template assumes you are using A4 paper.  Forcing Latex to use the paper size
you want, however, can be difficult.  Here's some basic instructions:

### Linux
This template includes a Makefile that builds it and forces A4.  You can use
it by running "make" in the template directory from a terminal.

### Windows
If you use MikTex, be sure MikTex is configured to use A4 paper.  That fixes it for me.

### Mac
I have no idea.  Try the Linux solution.

Support
-------
I have left Qatar University and am no longer employed there.  With that change, I am
also no longer providing support for this template.  I am leaving it here for students
who may wish to use it, but I won't be updating it myself to match any changes QU
may make to the thesis format.  However, if someone else wants to take it over, please
do.  You can fork this repository and let me know.  I'll update this README to point
to you. Until that happens, I'll also accept patches from students that update the
template to meet newer requirements.

Sadly, I am also not available to provide general Latex support, I simply don't have
time. If you need help learning or using Latex, there are many tutorials online
that can help.  You can also try your advisor or fellow grad students.

Patches
-------
If you have patches that you think would improve the quality of the template, please
submit them!  The easiest way is to make a Github account, fork the repo, make your
changes, and submit a pull request.  If that sounds too complicated, just email me
your changes.

Credits
-------
This template is based on a Princeton University template designed by Jeffrey Scott Dwoskin.

It was modified and updated for the Qatar University format by Ryan Riley.
