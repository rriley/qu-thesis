Intro
-----

This project is a latex template for the Qatar University thesis format.
The goal is to allow QU graduate students to have an easy way to put
their thesis into the correct format.

This template is not official from QU, so I make no guarantees that it
will comply with the format.  That said, I have done my best to follow
the guidelines described by the Office of the Vice President of Academic
Affairs, and I believe it follows the guidelines correct.
You need to be sure that you check the [guidlines](http://www.qu.edu.qa/offices/vpcao/graduates/)
for a QU thesis and that your final output matches.

Margins
-------
This template uses a 1.5" margin on the left and 1.25" on all other sides.
The 1.5" margin is to allow for proper binding.

When printing your thesis, make sure that choose "None" from page scaling,
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
If you find errors in this template, such as it not properly conforming to the standards,
please report them using the issue tracker above.  Please don't email me, as your email
is likely to get lost in the shuffle.  The issue tracker makes it easy for me to track
current problems and propose solutions.

If your department has additional requirements that this template doesn't handle,
feel free to open an issue and I'll see if I can add the requested feature.

Sadly, I am not available to provide general Latex support, I simply don't have
time. If you need help learning or using Latex, there are many tutorials online
that can help.  You can also try your advisor or fellow students.

Credits
-------
This template is based on a Princeton University template designed by Jeffrey Scott Dwoskin.

It was modified and updated for the Qatar University format by Ryan Riley.
