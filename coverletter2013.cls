%% coverletter2013.cls
%% Copyright 2014 Roberto Leinardi
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work i sRoberto Leinardi.
%
% This work consists of the files coverletter2013.cls.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coverletter2013}[2014/08/03 (beta) European cover letter 2013 class]

% Input encodings
\DeclareOption{ascii}{\AtEndOfClass{\inputencoding{ascii}}}
\DeclareOption{latin1}{\AtEndOfClass{\inputencoding{latin1}}}
\DeclareOption{latin2}{\AtEndOfClass{\inputencoding{latin2}}}
\DeclareOption{latin3}{\AtEndOfClass{\inputencoding{latin3}}}
\DeclareOption{latin4}{\AtEndOfClass{\inputencoding{latin4}}}
\DeclareOption{latin5}{\AtEndOfClass{\inputencoding{latin5}}}
\DeclareOption{latin9}{\AtEndOfClass{\inputencoding{latin9}}}
\DeclareOption{latin10}{\AtEndOfClass{\inputencoding{latin10}}}
\DeclareOption{decmulti}{\AtEndOfClass{\inputencoding{decmulti}}}
\DeclareOption{cp850}{\AtEndOfClass{\inputencoding{cp850}}}
\DeclareOption{cp852}{\AtEndOfClass{\inputencoding{cp852}}}
\DeclareOption{cp858}{\AtEndOfClass{\inputencoding{cp858}}}
\DeclareOption{cp437}{\AtEndOfClass{\inputencoding{cp437}}}
\DeclareOption{cp437de}{\AtEndOfClass{\inputencoding{cp437de}}}
\DeclareOption{cp865}{\AtEndOfClass{\inputencoding{cp865}}}
\DeclareOption{applemac}{\AtEndOfClass{\inputencoding{applemac}}}
\DeclareOption{next}{\AtEndOfClass{\inputencoding{next}}}
\DeclareOption{cp1250}{\AtEndOfClass{\inputencoding{cp1250}}}
\DeclareOption{cp1252}{\AtEndOfClass{\inputencoding{cp1252}}}
\DeclareOption{cp1257}{\AtEndOfClass{\inputencoding{cp1257}}}
\DeclareOption{ansinew}{\AtEndOfClass{\inputencoding{ansinew}}}
\DeclareOption{utf8}{\AtEndOfClass{\inputencoding{utf8x}}}
\DeclareOption{utf8x}{\AtEndOfClass{\inputencoding{utf8x}}}
\DeclareOption{koi8-r}{\AtEndOfClass{\inputencoding{koi8-r}}}
\DeclareOption{koi8-ru}{\AtEndOfClass{\inputencoding{koi8-ru}}}
\DeclareOption{koi8-u}{\AtEndOfClass{\inputencoding{koi8-u}}}
\DeclareOption{cp1251}{\AtEndOfClass{\inputencoding{cp1251}}}
\DeclareOption{cp855}{\AtEndOfClass{\inputencoding{cp855}}}
\DeclareOption{cp866}{\AtEndOfClass{\inputencoding{cp866}}}
\DeclareOption{maccyr}{\AtEndOfClass{\inputencoding{maccyr}}}
\DeclareOption{macukr}{\AtEndOfClass{\inputencoding{macukr}}}

% Set font
\DeclareOption{helvetica}{%                       
  \renewcommand{\rmdefault}{phv}
  \renewcommand{\sfdefault}{phv}
}
\DeclareOption{arial}{%                       
  \renewcommand{\rmdefault}{ma1} % (this font is NOT installed by default!)
  \renewcommand{\sfdefault}{ma1}
}
\DeclareOption{narrow}{
  \renewcommand{\seriesdefault}{mc} % Narrow
  \renewcommand{\bfdefault}{bc}  % Boldface narrow
}

\def\ecl@fontsize{11pt}
\DeclareOption{9pt}{\def\@@ptsize{9pt}}
\DeclareOption{10pt}{\def\ecl@fontsize{10pt}}
\DeclareOption{11pt}{\def\ecl@fontsize{11pt}}
\DeclareOption{12pt}{\def\ecl@fontsize{12pt}}
% Pass all other options (a4paper, 10pt, draft, openbib, etc...) to article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}
} 

\ExecuteOptions{english} % Default options

\ProcessOptions\relax

\LoadClass[\ecl@fontsize]{extarticle}
\RequirePackage{ucs}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage[overload]{textcase}
\RequirePackage[bookmarks=false,colorlinks=true,urlcolor=navyblue]{hyperref}

\definecolor{torea-bay}{RGB}{17,65,148}
\definecolor{curious-blue}{RGB}{21,147,203}
\definecolor{boston-blue}{RGB}{57,142,201}
\definecolor{navyblue}{RGB}{0,0,128}
\definecolor{birch}{RGB}{54,53,32}
\definecolor{cod-gray}{RGB}{25,25,25}

\def\hrulefill{\leavevmode\leaders\hrule height 1pt\hfill\kern\z@}

\newcommand{\globalcolor}[1]{%
  \color{#1}\global\let\default@color\current@color
}

\AtBeginDocument{%
\setlength{\parindent}{0pt}
\globalcolor{birch}
} % End \AtBeginDocument

% Thanks to Roman Bertle for suggesting the following:
\renewcommand{\labelitemi}{\normalfont\bfseries \textendash}
\renewcommand{\labelitemii}{\textasteriskcentered}
\renewcommand{\labelitemiii}{\textperiodcentered}

\newcommand*{\eclname}[1]{\def\ecl@name{#1}} % Replaces the above
\newcommand*{\ecladdress}[1]{\def\ecl@address{#1}}
\newcommand*{\ecltelephone}[2][]{\def\ecl@mobile{#2}\def\ecl@telephone{#1}}
\newcommand*{\eclemail}[1]{\def\ecl@email{#1}}
\newcommand*{\ecllinkedin}[1]{\def\ecl@linkedin{#1}}
\newcommand*{\eclcompany}[1]{\def\ecl@company{#1}} 

\eclname{}
\ecladdress{}
\ecltelephone{}
\eclemail{}
\ecllinkedin{}
\eclcompany{}

\providecommand{\eclcompanyname}[1][0pt]{%
\ecl@company
}

\providecommand{\eclpersonalinfo}[1][0pt]{%
\pagenumbering{gobble}% Remove page numbers (and reset to 1)
\clearpage
\thispagestyle{empty}
\begin{huge}
\textcolor{cod-gray}{\ecl@name}
\end{huge}\par\vspace{12pt}
\ifx\@empty\ecl@address
\else
	$\begin{array}{@{}l}\includegraphics[width=\ecl@iconwidth]{ic_address}\end{array}$\ecl@address\par
\fi
\ifx\@empty\ecl@mobile
\else
	$\begin{array}{@{}l}\includegraphics[width=\ecl@iconwidth]{ic_mobile}\end{array}$\ecl@mobile\quad
	\ifx\@empty\ecl@telephone
	\else
		$\begin{array}{@{}l}\includegraphics[width=\ecl@iconwidth]{ic_phone_home}\end{array}$\ecl@telephone\quad
	\fi
\fi
\ifx\@empty\ecl@email
\else
	$\begin{array}{@{}l}\includegraphics[width=\ecl@iconwidth]{ic_email}\end{array}$\href{mailto:\ecl@email}{\ecl@email}\quad
\fi
\ifx\@empty\ecl@linkedin
\else
	$\begin{array}{@{}l}\includegraphics[width=\ecl@iconwidth]{ic_linkedin}\end{array}$\ecl@linkedin\quad
\fi
\par\vspace{5pt}
\textcolor{boston-blue}{\hrulefill}\par\vspace{#1}
}

% Text bullet
\newcommand{\eclbullet}{\raisebox{.35ex}[0cm][0cm]{\tiny\textbullet}}

% Icon size
\newlength\ecl@iconwidth
\newcommand*{\eclIconwidth}[1]{\setlength\ecl@iconwidth{#1}}
\eclIconwidth{4.2mm}

\newcommand\ecladdressee[5][10pt]{%
\begin{flushright}
#2\par
#3\par
#4\par
#5\par
\vspace{#1}
\end{flushright}}

\newcommand\eclcitydatesubject[4][0pt]{%
#2, #3\par
#4\vspace{#1}\par\bigskip}

\newcommand\eclopeningsalutation[2][0pt]{%
#2,\vspace{#1}\par\bigskip}

\newcommand\eclmaincontent[4][0pt]{%
#2\par
#3\par
#4\vspace{#1}\par\bigskip}

\newcommand\eclclosingsalutation[2][0pt]{%
\par\bigskip#2,\vspace{#1}\par\bigskip}


\newcommand\eclsignature[2][0pt]{%
\ifx&#2&%
	\ecl@name\vspace{#1}\par
\else
	\includegraphics{#2}\par
\fi
}

\newcommand\eclitem[2][0pt]{%
#2\vspace{#1}\par}