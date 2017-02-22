\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{quthesis}
         [2015/12/23 Qatar University Thesis Class]
\RequirePackage{setspace}
\newcounter{subyear}
\setcounter{subyear}{\number\year}
\def\abstractauthor#1{\gdef\@abstractauthor{#1}}
\def\gradmonth#1{\gdef\@gradmonth{#1}}
\def\gradyear#1{\gdef\@gradyear{#1}}
\def\@submittedyear{\ifnum\month>10 \stepcounter{subyear}\thesubyear
  \else\thesubyear\fi}
\def\@submittedmonth{\ifnum\month>10 January\else\ifnum\month>5 November
  \else June\fi\fi}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}
\def\@copyrightyear{\number\year}
\def\defensedate#1{\gdef\@defensedate{#1}}
\def\adviser#1{\gdef\@adviser{#1}}
\def\coadviser#1{\gdef\@coadviser{#1}}
\def\committeeone#1{\gdef\@commone{#1}}
\def\committeetwo#1{\gdef\@commtwo{#1}}
\def\committeethree#1{\gdef\@commthree{#1}}
\long\def\@abstract{\@latex@error{No \noexpand\abstract given}\@ehc}
\newcommand*{\frontmatter}{
  \pagenumbering{roman}
  }
\newcommand*{\mainmatter}{
  \pagenumbering{arabic}
  }
\newcommand*{\makelot}{}
\newcommand*{\makelof}{}
\newcommand*{\makeloa}{}
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
\makededication\makeacknowledgements
\maketoc\makelot\clearpage\makelof
\clearpage\makeloa\clearpage\mainmatter
}
\def\@submitted{\@submittedmonth~\@submittedyear}
\def\@dept{Mathematics}
\def\@deptpref{Department of}
\def\departmentprefix#1{\gdef\@deptpref{#1}}
\def\department#1{\gdef\@dept{#1}}
\def\college#1{\gdef\@college{#1}}
\def\collegedean#1{\gdef\@collegedean{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\degreetitle#1{\gdef\@degreetitle{#1}}
\def\degreetype#1{\gdef\@degreetype{#1}}
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
  \@college
  \end{center}
  \vspace{.6in}
  \begin{center}
    \textbf{\@title}
  \end{center}
  \vspace{.3in}
  \begin{center}
      BY
  \end{center}
  \vspace{.3in}  
  \begin{center}
    \textbf{\@author}
  \end{center}
  \vspace{.6in}
  \extravspace{.6in}
  \begin{center}
    A \@degreetype\ Submitted to the Faculty of the \\
    \MakeUppercase{\@college} \\
    in Partial Fulfillment \\
    of the Requirements \\
    for the Degree of \\
    \@degreetitle \\
  \end{center}
  \vspace{.3in}
  \extravspace{.3in}
  \begin{center}
    \@gradmonth\ \@gradyear \\
   \copyright\ \@copyrightyear\ \@author. All Rights Reserved.
  \end{center}  
  \clearpage
  }}
\newcommand*{\makecommittee}{
  \newpage
  %\addcontentsline{toc}{section}{Committee}
  \begin{center}
  \Large \textbf{Committee}
  \end{center}
  \noindent The members of the committee approve the \@degreetype\ of \@author\ defended on \@defensedate:

  \bigskip

  \begin{flushright}
  \ifdefined\@adviser
  \vspace{0.4in}

  \noindent \makebox[3in]{\hrulefill}
  
  \@adviser
  
  \@degreetype\ Supervisor
  \fi

  \ifdefined\@coadviser
  \vspace{0.4in}

  \noindent \makebox[3in]{\hrulefill}
  
  \@coadviser
  
  \@degreetype\ Co-Supervisor
  \fi

  \ifdefined\@commone
  \vspace{0.4in}

  \noindent \makebox[3in]{\hrulefill}
  
  \@commone
  
  Committee Member
  \fi    
  \ifdefined\@commtwo
  \vspace{0.4in}

  \noindent \makebox[3in]{\hrulefill}
  
  \@commtwo
  
  Committee Member
  \fi
  \ifdefined\@commthree
  \vspace{0.4in}

  \noindent \makebox[3in]{\hrulefill}
  
  \@commthree
  
  Committee Member
  \fi
  \end{flushright}
  
  \vfill
  
  \noindent Approved:
  
  \vspace{0.4in}
  
  \noindent \makebox[4.5in]{\hrulefill}
  
  \noindent \@collegedean, Dean, \@college
}
\newcommand*{\makeabstract}{
  \newpage
  %\addcontentsline{toc}{section}{Abstract}
  \begin{center}
  \Large \textbf{Abstract}
  \end{center}
  \@abstractauthor, \@degree : \\
  \@gradmonth : \@gradyear , \@degreetitle \\
  Title: \@title \\
  Supervisor of \@degreetype : \@adviser
  
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
    \vfill
    \begin{center}
      \emph{\@dedication}
    \end{center}
    \vfill      
    \clearpage
  \fi
  }
\DeclareOption{loa}{\renewcommand*{\makeloa}{
  {\hfill\normalsize\bfseries List of Symbols and Acronyms \hfill\null}
  \printacronyms[include-classes=abbrev,name=Abbreviations,heading=none]
  \ifdefined\phantomsection
    % makes hyperref recognize this section properly for pdf links
    \phantomsection
  \else
  \fi
  \addcontentsline{toc}{section}{List of Abbreviations}
}}
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
\setlength{\topmargin}{-.25in}  %{-.5625in}
\setlength{\textheight}{9.2in}
\setlength{\textwidth}{5.55in}
%\setlength{\textwidth}{6in}

%%% Alter LaTeX defaults to try to eliminate all widows and orphans
\clubpenalty=10000
\widowpenalty=10000

%%% try to avoid overfull lines by limiting how far it is okay to exceed the margins
%%% http://www.tex.ac.uk/cgi-bin/texfaq2html?label=overfull
\setlength{\emergencystretch}{2em}

%%% Some code to put the page number in the right place.
%%% This is dirty and probably broken, but it works.
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
