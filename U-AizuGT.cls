%%
%%
%% IMPORTANT NOTICE:
%% You shall *not* be allowed to distribute this file.
%% Copyright 2019 The University of Aizu
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{U-AizuGT}[2019/12/04 Ver 1.2.0
  University of Aizu Graduation Thesis format]

\newif\if@ams
\@amsfalse
\DeclareOption{ams}{\@amstrue}
\newif\if@proofmode
\@proofmodefalse
\DeclareOption{proof}{\@proofmodetrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\if@proofmode%
\LoadClass[12pt,a4paper]{article}
\renewcommand{\baselinestretch}{2}
\else
\LoadClass[10pt,a4paper,twocolumn]{article}
\renewcommand{\baselinestretch}{0.96}
\fi
%%
%% Setting text area (A4: 210x297mm)
%%
\topmargin=0mm
\headheight=0.2in
\headsep=0.3in
\topskip=0mm
\textheight=216mm
\textwidth=160mm
\columnsep=14pt

\oddsidemargin=0mm %% 0.43cm
\evensidemargin=0mm %% 0.43cm

\newif\if@receveddate
\@receveddatefalse
\def\received#1#2{\def\@rmonth{#1}\def\@ryear{#2}\@receveddatetrue}
\gdef\@received{\ifcase\@rmonth\or
  January\or February\or March\or April\or May\or June\or July\or August\or
  September\or October\or November\or December\fi
  ,\space\number\@ryear}
\newcount\@year \@year = \year
\ifnum\month > 8
    \advance\@year by 1
\fi
\gdef\@rauto{\ifcase\month\or
    March\or March\or March\or August\or August\or August\or August\or
    August\or March\or March\or March\or March\fi
    ,\space\number\@year}

%%
%% Using Times-Roman font family
%%
\RequirePackage{times}
\if@ams%
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\fi
\RequirePackage{newtxtext} %% for texlive 2018
\RequirePackage{newtxmath} %% for texlive 2018

%%
%% magic words
%%
\@ifundefined{kanjiskip}{}{%
    \DeclareFontShape{JY2}{mc}{m}{sl}{<->ssub*mc/m/n}{}
    \DeclareFontShape{JY2}{mc}{m}{it}{<->ssub*mc/m/n}{}
    \DeclareFontShape{JT2}{mc}{m}{sl}{<->ssub*mc/m/n}{}
    \DeclareFontShape{JT2}{mc}{m}{it}{<->ssub*mc/m/n}{}
    \DeclareFontShape{JY2}{gt}{m}{sl}{<->ssub*gt/m/n}{}
    \DeclareFontShape{JY2}{gt}{m}{it}{<->ssub*gt/m/n}{} 
    \DeclareFontShape{JT2}{gt}{m}{sl}{<->ssub*gt/m/n}{}
    \DeclareFontShape{JT2}{gt}{m}{it}{<->ssub*gt/m/n}{}
}

%%
%% Header
%%
\pagestyle{headings}
\pagenumbering{arabic}

\renewcommand{\sectionmark}[1]{\markboth{\@studentid}{\@studentid}
  \if@receveddate\else\let\@received\@rauto\fi}
\let\@mkboth\@gobbletwo
\let\@oddfoot\@empty
\let\@evenfoot\@empty
\def\@oddhead{{\slshape\small
    University of Aizu, Graduation
    Thesis. \@received}\hfill\leftmark\hfill{\rm\thepage}}
\def\@evenhead{{\slshape\small
    University of Aizu, Graduation
    Thesis. \@received}\hfill\rightmark\hfill{\rm\thepage}}

%%
%% title
%%
\def\studentid#1{\gdef\@studentid{#1}}
\gdef\@studentid{\@latex@warning@no@line{%
    No \noexpand\studentid given}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\gdef\@supervisor{\@latex@warning@no@line{%
    No \noexpand\supervisor given}}
\gdef\@author{\@latex@warning@no@line{%
    No \noexpand\author given}}

\renewcommand{\maketitle}{\par
  \begingroup
     \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
      \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
      \long\def\@makefntext##1{\parindent 1em\noindent
              \hb@xt@1.8em{%
                  \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\studentid\relax
  \global\let\supervisor\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
    \vskip -3ex%
    {\huge \@title \par}%
    \vskip 0.5ex%
    \hrule height .15mm%
    \vskip 1ex%
    {\Large
      \@author\hspace{10mm}%
      \@studentid\hfill{\small Supervised by }\@supervisor}%
  \par \vskip 1.5em}

\renewcommand{\section}{\@startsection {section}{1}{\z@}%
  {-1.3ex}{1.5ex}{\normalfont\Large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
  {-1.05ex}{0.7ex}{\normalfont\large\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
  {-1.05ex}{0.7ex}{\normalfont\normalsize\bfseries}}
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
  {1.05ex}{-1em}{\normalfont\normalsize\bfseries}}
\renewcommand{\subparagraph}{\@startsection{subparagraph}{5}{\parindent}%
  {1.05ex}{-1em}{\normalfont\normalsize\bfseries}}

\endinput
%%
%% End of file `U-AizuGT.cls'
