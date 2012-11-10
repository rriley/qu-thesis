\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{quthesis}
         [2012/11/10 Qatar University Thesis class]
\RequirePackage{setspace}
\newcounter{subyear}
\setcounter{subyear}{\number\year}
\def\submitted#1{\gdef\@submitted{#1}}
\def\@submittedyear{\ifnum\month>10 \stepcounter{subyear}\thesubyear
  \else\thesubyear\fi}
\def\@submittedmonth{\ifnum\month>10 January\else\ifnum\month>5 November
  \else June\fi\fi}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}
\def\@copyrightyear{\number\year}
\def\adviser#1{\gdef\@adviser{#1}}
\long\def\@abstract{\@latex@error{No \noexpand\abstract given}\@ehc}
\newcommand{\ps@quthesis}{
  \renewcommand{\@oddhead}{}% header blank
  \renewcommand{\@evenhead}{}% header blank
  \renewcommand{\@oddfoot}{\hfill-\thepage-\hfill}%
  \renewcommand{\@evenfoot}{\hfill-\thepage-\hfill}%
}
\newcommand*{\frontmatter}{
  \pagenumbering{roman}
  }
\newcommand*{\mainmatter}{
  \pagenumbering{arabic}
  }
\newcommand*{\makelot}{}
\newcommand*{\makelof}{}
\newcommand*{\makelos}{}
\newcommand*{\maketoc}{
  % Add ToC to the pdfbookmarks as a section, but not to the ToC itself.
  % only if we have the hyperref command that is necessary
  \ifdefined\pdfbookmark
     \phantomsection
     \pdfbookmark[1]{\contentsname}{Contents}
  \else
  \fi

  \tableofcontents
  \clearpage
}
%% Setup a command to add extra space only if in singlespacing mode
\newcommand*{\extravspace}[1]{\vspace{0in}}
%% Setup a command to set spacing for body text; also used to restore spacing after long tables in document
\newcommand*{\bodyspacing}{
  \doublespacing
}
%% Setup a command to set spacing for long tables, to be used manually in document
\newcommand*{\tablespacing}{
  \singlespacing
}
%% Command inserted into the document immediately after \begin{document} to place all frontmatter
%%   This was formerly named 'begincmd' and called below in \AtBeginDocument{}
%%   However, that is not compatible with package 'hyperref'. \tableofcontents needs
%%   to be declared from within the document itself. 
\newcommand*{\makefrontmatter}{
\bodyspacing
\frontmatter\maketitlepage\makecommittee\makeabstract
\maketoc\makelot\clearpage\makelof\clearpage\makelos
\makeacknowledgements\makededication
\clearpage\mainmatter
}
\def\@submitted{\@submittedmonth~\@submittedyear}
\def\@dept{Mathematics}
\def\@deptpref{Department of}
\def\departmentprefix#1{\gdef\@deptpref{#1}}
\def\department#1{\gdef\@dept{#1}}
\def\college#1{\gdef\@college{#1}}
\def\degree#1{\gdef\@degree{#1}}
\long\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\newcommand{\maketitlepage}{{
  \thispagestyle{empty}
  %\sc
  \vspace*{0in}
  \begin{center}
  QATAR UNIVERSITY
  \end{center}
  \vspace{.3in}
  \begin{center}
  Graduate Studies
  \end{center}
  \vspace{.3in}
  \begin{center}
  \@college
  \end{center}
  \vspace{.6in}
  \begin{center}
    \textbf{\@title}
  \end{center}
  \vspace{.6in}
  \extravspace{.6in}
  \begin{center}
    A Thesis in \\
    \@dept \\
    By \\
    \@author \\
  \end{center}
  \vspace{.3in}
  \extravspace{.3in}
  \begin{center}
	\copyright\ \@copyrightyear\ \@author  
  \end{center}
  \vspace{.3in}
  \extravspace{.3in}
  \begin{center}
    Submitted in Partial Fulfillment \\
    of the Requirements \\
    for the Degree of \\
    \@degree \\
  \end{center}
  \vspace{.3in}
  \extravspace{.3in}
  \begin{center}
    \@submitted
  \end{center}
  \clearpage
  }}
\newcommand*{\makecommittee}{
  \newpage
  %\addcontentsline{toc}{section}{Committee}
  \begin{center}
  \Large \textbf{Committee}
  \end{center}
  The thesis of \@author\ was reviewed and approved by the following:
  We, the committee members listed below accept and approve the
  Thesis/Dissertation of the student named above. To the best of this
  committee’s knowledge, the Thesis/Dissertation conforms the requirements
  of Qatar University, and we endorse this Thesis for examination.

  \vspace{0.2in}
  \noindent \makebox[4.2in]{Name\hspace{0.3cm} \hrulefill}

  \vspace{0.1in}  
  \noindent \makebox[4.2in]{Signature\hspace{0.3cm} \hrulefill} \hfill Date\hspace{0.3cm} \makebox[1in]{\hrulefill}

  \vspace{0.2in}
  \noindent \makebox[4.2in]{Name\hspace{0.3cm} \hrulefill}

  \vspace{0.1in}  
  \noindent \makebox[4.2in]{Signature\hspace{0.3cm} \hrulefill} \hfill Date\hspace{0.3cm} \makebox[1in]{\hrulefill}
    
  \vspace{0.2in}
  \noindent \makebox[4.2in]{Name\hspace{0.3cm} \hrulefill}

  \vspace{0.1in}  
  \noindent \makebox[4.2in]{Signature\hspace{0.3cm} \hrulefill} \hfill Date\hspace{0.3cm} \makebox[1in]{\hrulefill}
}
\newcommand*{\makeabstract}{
  \newpage
  %\addcontentsline{toc}{section}{Abstract}
  \begin{center}
  \Large \textbf{Abstract}
  \end{center}
  \@abstract
  \clearpage
  }
\def\makeacknowledgements{
  \ifx\@acknowledgements\undefined
  \else
    \ifdefined\phantomsection
     % makes hyperref recognize this section properly for pdf links
     \phantomsection
    \else
    \fi

    \addcontentsline{toc}{section}{Acknowledgements}
    \begin{center}
      \Large \textbf{Acknowledgements}
    \end{center}
    \@acknowledgements
    \clearpage
  \fi
  }
\def\makededication{
  \ifx\@dedication\undefined
  \else
    \addcontentsline{toc}{section}{Dedication}
    \begin{center}
      \Large \textbf{Dedication}
    \end{center}
      \@dedication
    \clearpage
  \fi
  }
\DeclareOption{lot}{\renewcommand*{\makelot}{
  \ifdefined\phantomsection
    % makes hyperref recognize this section properly for pdf links
    \phantomsection
  \else
  \fi
  \addcontentsline{toc}{section}{List of Tables}\listoftables}}
\DeclareOption{lof}{\renewcommand*{\makelof}{
  \ifdefined\phantomsection
    % makes hyperref recognize this section properly for pdf links
    \phantomsection
  \else
  \fi
  \addcontentsline{toc}{section}{List of Figures}\listoffigures}}
\DeclareOption{los}{
  \renewcommand*{\makelos}{
    \RequirePackage{losymbol}
    \section*{List of Symbols\@mkboth {LIST OF SYMBOLS}{LIST OF SYMBOLS}}
    \@starttoc{los}
  \ifdefined\phantomsection
    % makes hyperref recognize this section properly for pdf links
    \phantomsection
  \else
  \fi
    \addcontentsline{toc}{section}{List of Symbols}
  }
}
\DeclareOption{singlespace}{
  \renewcommand*{\bodyspacing}{
  \singlespacing
  }
  %% Add extra space only if in singlespacing mode
  \renewcommand*{\extravspace}[1]{\vspace{#1}}
}
%% Doublespacing is the default for the thesis -- need not be declared.
\DeclareOption{doublespacing}{
  \renewcommand*{\bodyspacing}{
  \doublespacing
  }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
%% Not necessary to specify the point size - we inherit it from above
%% \LoadClass[12pt]{report}
\LoadClass{report}
\setlength{\oddsidemargin}{.5in}   %{.4375in}
\setlength{\evensidemargin}{.5in} %{.4375in}
\setlength{\topmargin}{-.5in}  %{-.5625in}
\setlength{\footskip}{.25in} % to put page number 3/4" from the bottom of the page (1/4" from bottom of body text)
\setlength{\textheight}{9in}
\setlength{\textwidth}{6in}

%%% Alter LaTeX defaults to try to eliminate all widows and orphans
\clubpenalty=10000
\widowpenalty=10000

%%% try to avoid overfull lines by limiting how far it is okay to exceed the margins
%%% http://www.tex.ac.uk/cgi-bin/texfaq2html?label=overfull
\setlength{\emergencystretch}{2em}

%%% Some code to put the page number in the right place.
%%% This is dirty and probably broken.
\renewcommand{\ps@plain}{
  \renewcommand{\@oddhead}{}% header blank
  \renewcommand{\@evenhead}{}% header blank
  \renewcommand{\@oddfoot}{\hfill\thepage}%
  \renewcommand{\@evenfoot}{\hfill\thepage}%
}
\renewcommand{\@oddfoot}{\hfill\thepage}%
\renewcommand{\@evenfoot}{\hfill\thepage}%

\long\def\abstract#1{\gdef\@abstract{#1}}
%% 'begincmd' no longer used -- insert \makefrontmatter in the document instead. See above. 
%\AtBeginDocument{\begincmd}
\endinput
%% 
%% End of file `quthesis.cls'.