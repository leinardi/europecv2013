%% europecv2013.cls
%% Additions and changes are copyright 2014 Roberto Leinardi
%% Code from europecv.cls copyright 2006 Nicola Vitacolonna (see below)
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
% The Current Maintainer of this work is Roberto Leinardi.
%
% This work consists of the file europecv.cls.
%
% The file europecv2013.cls is a derived work under the terms of the 
% LPPL. It is based on version 2014-06-27 of europecv.cls which is 
% part of the europecv package by Nicola Vitacolonna. A copy of europecv,
% including the unmodified version of europecv.cls is available
% from http://www.ctan.org/tex-archive/macros/latex/contrib/europecv.
% europecv2013.cls is part of the included archive europecv2013.tar.gz
% which is released under the LPPL.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{europecv2013}[2015/04/12 (beta) European curriculum vitae 2013 class]

% CV models and instructions:
%   http://europass.cedefop.europa.eu/en/documents/curriculum-vitae/templates-instructions

\DeclareRobustCommand\ecv@utf[1]{{\inputencoding{utf8x}#1}}

% Set language
\DeclareOption{english}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecven.def}{}{%
    \ClassError{europecv2013}{English definition file 'ecven.def' not found}%
     {The file should be inside the europecv folder.\MessageBreak
    Try to re-install the europecv class.}}%
  }%
}
\DeclareOption{italian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvit.def}{}{%
    \ClassWarningNoLine{europecv}{Italian definition file 'ecvit.def' not found}}%
  }%
}
\DeclareOption{spanish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecves.def}{}{%
    \ClassWarningNoLine{europecv}{Spanish definition file 'ecves.def' not found}}%
  }%
}
\DeclareOption{french}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvfr.def}{}{%
    \ClassWarningNoLine{europecv}{French definition file 'ecvfr.def' not found}}%
  }%
}
\DeclareOption{danish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvda.def}{}{%
    \ClassWarningNoLine{europecv}{Danish definition file 'ecvda.def' not found}}%
  }%
}
\DeclareOption{german}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvde.def}{}{%
    \ClassWarningNoLine{europecv}{German definition file 'ecvde.def' not found}}%
  }%
}
\DeclareOption{finnish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvfi.def}{}{%
    \ClassWarningNoLine{europecv}{Finnish definition file 'ecvfi.def' not found}}%
  }%
}
\DeclareOption{portuges}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvpt.def}{}{%
    \ClassWarningNoLine{europecv}{Portuguese definition file 'ecvpt.def' not found}}%
  }%
}
\DeclareOption{portuguese}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvpt.def}{}{%
    \ClassWarningNoLine{europecv}{Portuguese definition file 'ecvpt.def' not found}}%
  }%
}
\DeclareOption{swedish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvsv.def}{}{%
    \ClassWarningNoLine{europecv}{Swedish definition file 'ecvsv.def' not found}}%
  }%
}
\DeclareOption{norwegian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvno.def}{}{%
    \ClassWarningNoLine{europecv}{Norwegian definition file 'ecvno.def' not found}}%
  }%
}
\DeclareOption{dutch}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvnl.def}{}{%
    \ClassWarningNoLine{europecv}{Dutch definition file 'ecvnl.def' not found}}%
  }%
}
\DeclareOption{catalan}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvca.def}{}{%
    \ClassWarningNoLine{europecv}{Catalan definition file 'ecvca.def' not found}}%
  }%
}
\DeclareOption{polish}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvpl.def}{}{%
    \ClassWarningNoLine{europecv}{Polish definition file 'ecvpl.def' not found}}%
  }%
}
\DeclareOption{hungarian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvhu.def}{}{%
    \ClassWarningNoLine{europecv}{Hungarian definition file 'ecvhu.def' not found}}%
    \ecvpage{\thepage\ifx\@empty\ecv@totpages.\else\ecv@totpages\fi~\ecv@pagekey}
    \def\ecv@lfoot{%
  \footnotesize\textrm{\ecv@page~- \textrm{\ecv@footername} \ecv@cvofkey}}%
  }%
}
\DeclareOption{estonian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvet.def}{}{%
    \ClassWarningNoLine{europecv}{Estonian definition file 'ecvet.def' not found}}%
  }%
}
\DeclareOption{icelandic}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvis.def}{}{%
    \ClassWarningNoLine{europecv}{Icelandic definition file 'ecvis.def' not found}}%
  }%
}
\DeclareOption{lithuanian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvlt.def}{}{%
    \ClassWarningNoLine{europecv}{Lithuanian definition file 'ecvlt.def' not found}}%
  }%
}
\DeclareOption{czech}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvcs.def}{}{%
    \ClassWarningNoLine{europecv}{Czech definition file 'ecvcs.def' not found}}%
  }%
}
\DeclareOption{slovak}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvsk.def}{}{%
    \ClassWarningNoLine{europecv}{Slovak definition file 'ecvsk.def' not found}}%
  }%
}
\DeclareOption{latvian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvlv.def}{}{%
    \ClassWarningNoLine{europecv}{Latvian definition file 'ecvlv.def' not found}}%
  }%
}
\DeclareOption{slovenian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvsl.def}{}{%
    \ClassWarningNoLine{europecv}{Slovenian definition file 'ecvsl.def' not found}}%
  }%
}
\DeclareOption{romanian}{%
  \AtEndOfPackage{%
    \InputIfFileExists{ecvro.def}{}{%
    \ClassWarningNoLine{europecv}{Romanian definition file 'ecvro.def' not found}}%
  }%
}
\DeclareOption{bulgarian}{%
  \AtEndOfPackage{%
      \InputIfFileExists{ecvbg.def}{}{%
      \ClassWarningNoLine{europecv}{Bulgarian definition file 'ecvbg.def' not found}}%
  }%
}
\DeclareOption{greek}{%
  \AtEndOfPackage{%
     \InputIfFileExists{ecvgr.def}{}{%
    \ClassWarningNoLine{europecv}{Greek definition file 'ecvgr.def' not found}}%
  }%
}
\DeclareOption{galician}{%
  \AtEndOfPackage{%
     \InputIfFileExists{ecvgl.def}{}{%
    \ClassWarningNoLine{europecv}{Galician definition file 'ecvgl.def' not found}}%
  }%
}
\DeclareOption{serbian}{%
  \AtEndOfPackage{%
     \InputIfFileExists{ecvsr.def}{}{%
    \ClassWarningNoLine{europecv}{Serbian definition file 'ecvsr.def' not found}}%
  }%
}
\DeclareOption{croatian}{%
  \AtEndOfPackage{%
     \InputIfFileExists{ecvhr.def}{}{%
    \ClassWarningNoLine{europecv}{Croatian definition file 'ecvhr.def' not found}}%
  }%
}


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
\DeclareOption{utf8}{\AtEndOfClass{\inputencoding{utf8}}}
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
% No title
% This must come *after* language definitions
\DeclareOption{notitle}{%
  \AtEndOfPackage{\renewcommand*\ecvtitle{}}%
}

% Europass logo
\DeclareOption{logo}{%
\providecommand*\draweuropasslogo{%
   \raisebox{-4mm}{\includegraphics[width=\ecv@logowidth]{europasslogo}}}
}
\DeclareOption{nologo}{\renewcommand*\draweuropasslogo{}}

% Page numbering
\DeclareOption{totpages}{%
  \AtEndOfPackage{\RequirePackage{totpages}%
  \def\ecv@totpages{~/~\ref{TotPages}}
  %\ecvpage{\ecv@pagekey~\thepage~/~\ref{TotPages}}%
  }%
}

\def\ecv@fontsize{9pt}
\DeclareOption{9pt}{\def\@@ptsize{9pt}}
\DeclareOption{10pt}{\def\ecv@fontsize{10pt}}
\DeclareOption{11pt}{\def\ecv@fontsize{11pt}}
\DeclareOption{12pt}{\def\ecv@fontsize{12pt}}
% Pass all other options (a4paper, 10pt, draft, openbib, etc...) to article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}
} 

\ExecuteOptions{english,logo,hrule} % Default options

\ProcessOptions\relax

\LoadClass[\ecv@fontsize]{extarticle}
\RequirePackage{ucs}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{array}
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage{longtable}
\RequirePackage{fancyhdr} % for page numbering
\RequirePackage[overload]{textcase}
\RequirePackage[bookmarks=false,colorlinks=true,urlcolor=navyblue]{hyperref}
\RequirePackage{amssymb} % for $\blacksquare$ symbol
\RequirePackage{enumitem} % for removing item indentation

\definecolor{torea-bay}{RGB}{17,65,148}
\definecolor{curious-blue}{RGB}{21,147,203}
\definecolor{boston-blue}{RGB}{57,142,201}
\definecolor{navyblue}{RGB}{0,0,128}
\definecolor{masala}{RGB}{63,58,56}

\def\hrulefill{\leavevmode\leaders\hrule height 1pt\hfill\kern\z@\rule{2.5mm}{2.5mm}}

\def\ecv@totpages{}
\newcommand*{\ecvpage}[1]{\def\ecv@page{#1}}
\ecvpage{\ecv@pagekey~\thepage\ecv@totpages}

% Page number
\def\ecv@lfoot{%
  \textcolor{curious-blue}{\footnotesize\textrm{\ecv@page~-~\ecv@cvofkey}\\
  \textrm{\ecv@footername}}
}

% Right Footnote to be shown on every page
\newcommand\ecvfootnote[1]{\def\ecv@rfoot{\textcolor{curious-blue}{#1}}}
\ecvfootnote{}

\newcommand{\globalcolor}[1]{%
  \color{#1}\global\let\default@color\current@color
}

\AtBeginDocument{%
% Ensure that \ecv@leftcolwidth and \ecv@rightcolwidth
% are correctly defined
\ecvLeftColumnWidth{\ecv@leftcolwidth}
% Set layout
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\fancyfoot[L]{\begin{minipage}{\ecv@leftcolwidth}
\begin{flushright}\footnotesize\ecv@lfoot\end{flushright}%
\end{minipage}
}
\fancyfoot[R]{\begin{minipage}{\ecv@rightcolwidth}
\footnotesize\ecv@rfoot
\end{minipage}}
\renewcommand{\headrulewidth}{0pt}%
\globalcolor{masala}
} % End \AtBeginDocument

\setlist[itemize]{leftmargin=*}
\renewcommand{\labelitemi}{\scriptsize$\blacksquare$}
\renewcommand{\labelitemii}{\textasteriskcentered}
\renewcommand{\labelitemiii}{\textperiodcentered}

\newcommand*{\ecvfirstname}[1]{\def\ecv@firstname{#1}} % Deprecated
\newcommand*{\ecvlastname}[1]{\def\ecv@lastname{#1}} % Deprecated
\newcommand*{\ecvname}[1]{\def\ecv@name{#1}} % Replaces the above
\newcommand*{\ecvfootername}[1]{\def\ecv@footername{#1}}
\newcommand*{\ecvaddress}[1]{\def\ecv@address{#1}}
\newcommand*{\ecvtelephone}[2][]{\def\ecv@mobile{#2}\def\ecv@telephone{#1}}
\newcommand*{\ecvemail}[2][]{\def\ecv@emailid{#2}\def\ecv@emailtext{#1}}
\newcommand*{\ecvlinkedin}[1]{\def\ecv@linkedin{#1}}
\newcommand*{\ecvgithub}[1]{\def\ecv@github{#1}}
\newcommand*{\ecvstackoverflow}[1]{\def\ecv@stackoverflow{#1}}
\newcommand*{\ecvhomepage}[1]{\def\ecv@homepage{#1}}
\newcommand*{\ecvnationality}[1]{\def\ecv@nationality{#1}}
\newcommand*{\ecvdateofbirth}[1]{\def\ecv@birth{#1}}
\newcommand*{\ecvgender}[1]{\def\ecv@gender{#1}}
% Personal picture
\newcommand*{\ecvdrawpicture}{}
\newcommand*{\ecvbeforepicture}[1]{\def\ecv@beforepic{#1}}
\newcommand*{\ecvafterpicture}[1]{\def\ecv@afterpic{#1}}
\newcommand*\ecvpicture{%
\@ifnextchar[\ecv@picture{\ecv@picture[]}}
\def\ecv@picture[#1]#2{%
\def\ecvarg{#2}
\ifx\@empty\ecvarg\renewcommand*{\ecvdrawpicture}{}\else
\renewcommand*{\ecvdrawpicture}{\raisebox{-.9\totalheight}{\includegraphics[#1]{#2}}}
\fi}
% The following must be used inside \ecvbeforepicture
% or \ecvafterpicture
\newcommand*{\ecvspace}[1]{& \tabularnewline[#1] }
\ecvbeforepicture{}
\ecvafterpicture{}
\ecvfirstname{}
\ecvlastname{}
\ecvname{\ecv@lastname\ \ecv@firstname}
\ecvfootername{\ecv@name}
\ecvaddress{}
\ecvtelephone{}
\ecvemail{}
\ecvlinkedin{}
\ecvgithub{}
\ecvstackoverflow{}
\ecvhomepage{}
\ecvgender{}
\ecvdateofbirth{}
\ecvnationality{}
\ecvpicture{}

\providecommand{\ecvpersonalinfo}[1][20pt]{%
& \tabularnewline[20pt]
\textcolor{torea-bay}{\MakeUppercase{\ecv@infosectionkey}} & \LARGE\ecv@name\tabularnewline[10pt]
\ifx\@empty\ecvdrawpicture &\else
\ecv@beforepic\ecvdrawpicture\ecv@afterpic &
\fi
\ifx\@empty\ecv@address\else
$\begin{array}{@{}l}\includegraphics[width=\ecv@iconwidth]{ic_address}\end{array}$\ecv@address\par\vspace{5pt}
\fi
\ifx\@empty\ecv@mobile\else
$\begin{array}{@{}l}\includegraphics[width=\ecv@iconwidth]{ic_mobile}\end{array}$\ecv@mobile
 \ifx\@empty\ecv@telephone\else\qquad\includegraphics[width=\ecv@iconwidth]{ic_phone_home} \ecv@telephone\fi
\par\vspace{5pt}
\fi
\ifx\@empty\ecv@emailid\else
	$\begin{array}{@{}l}\includegraphics[width=\ecv@iconwidth]{ic_email}\end{array}$%
	\ifx\@empty\ecv@emailtext%
		\href{mailto:\ecv@emailid}{\foreignlanguage{english}{\ecv@emailid}}
	\else%
		\href{mailto:\ecv@emailid}{\ecv@emailtext}
	\fi
	\par\vspace{5pt}
\fi
\ifx\@empty\ecv@homepage\else
$\begin{array}{@{}l}\includegraphics[width=\ecv@iconwidth]{ic_url}\end{array}$\ecv@homepage\par\vspace{5pt}
\fi
\ifx\@empty\ecv@linkedin\else
$\begin{array}{@{}l}\includegraphics[width=\ecv@iconwidth]{ic_linkedin}\end{array}$\ecv@linkedin\par\vspace{5pt}
\fi
\ifx\@empty\ecv@github\else
$\begin{array}{@{}l}\includegraphics[width=\ecv@iconwidth]{ic_github}\end{array}$\ecv@github\par\vspace{5pt}
\fi
\ifx\@empty\ecv@stackoverflow\else
$\begin{array}{@{}l}\includegraphics[width=\ecv@iconwidth]{ic_stackoverflow}\end{array}$\ecv@stackoverflow\par\vspace{10pt}
\fi
\ifx\@empty\ecv@gender
	\ifx\@empty\ecv@birth
		\ifx\@empty\ecv@nationality
			% false false false
		\else
			% false false true
			 \textcolor{curious-blue}{\ecv@nationalitykey} \ecv@nationality \par\vspace{5pt}
		\fi
	\else
		%false true
	 	\textcolor{curious-blue}{\ecv@birthkey} \ecv@birth
	 	\ifx\@empty\ecv@nationality
			% false true false
			\par\vspace{5pt}
		\else
			% false true true
			\textcolor{curious-blue}{\ | \ecv@nationalitykey} \ecv@nationality \par\vspace{5pt}
			
		\fi
	\fi
\else
	% true
	\textcolor{curious-blue}{\ecv@genderkey} \ecv@gender
	\ifx\@empty\ecv@birth
		\ifx\@empty\ecv@nationality
			% true false false
			\par\vspace{5pt}
		\else
			% true false true
			 \textcolor{curious-blue}{\ | \ecv@nationalitykey} \ecv@nationality \par\vspace{5pt}
		\fi
	\else
		%true true
	 	\textcolor{curious-blue}{\ | \ecv@birthkey} \ecv@birth
	 	\ifx\@empty\ecv@nationality
			% true true false
			\par\vspace{5pt}
		\else
			% true true true
			\textcolor{curious-blue}{\ | \ecv@nationalitykey} \ecv@nationality \par\vspace{5pt}
		\fi
	\fi
\fi

\tabularnewline[#1]
}

% Spoken language information
\newcommand*\ecvmothertongue[2][0pt]{%
\textcolor{torea-bay}{\ecv@mothertonguekey}\vspace{#1} & #2\vspace{#1}\tabularnewline\nopagebreak[4]
}
\newlength\ecv@langparwidth
\setlength{\arrayrulewidth}{1pt}
\arrayrulecolor[HTML]{D3D3D3}

\newcommand*\ecvlanguageheader{%
{\textcolor{torea-bay}{\ecv@otherlanguageskey}}&
\setlength\extrarowheight{2pt}
\begin{tabular}[t]{m{\ecv@langparwidth}|m{\ecv@langparwidth}|m{\ecv@langparwidth}|m{\ecv@langparwidth}|m{\ecv@langparwidth}}
\firsthline
\multicolumn{2}{c|}{\textcolor{torea-bay}{\MakeUppercase{\ecv@understandkey}}}&\multicolumn{2}{c|}{\textcolor{torea-bay}{\MakeUppercase{\ecv@speakkey}}}&\centering\textcolor{torea-bay}{\MakeUppercase{\ecv@writekey}}\tabularnewline\nopagebreak[4]\hline
\centering\small{\textcolor{torea-bay}{\ecv@listenkey}}   & \centering \small{\textcolor{torea-bay}{\ecv@readkey}} &\centering \small{\textcolor{torea-bay}{\ecv@interactkey}} &\centering \small{\textcolor{torea-bay}{\ecv@productkey}} & \tabularnewline\nopagebreak[4]
%\lasthline
\hline
\end{tabular} \tabularnewline[-\arrayrulewidth]\nopagebreak[4]
}
\newcommand*\ecvlanguage[7][0pt]{
{#2} &
\setlength\extrarowheight{2pt}
\begin{tabular}{m{\ecv@langparwidth}|m{\ecv@langparwidth}|m{\ecv@langparwidth}|m{\ecv@langparwidth}|m{\ecv@langparwidth}}
\hline
\centering #3 & \centering #4 & \centering #5 & \centering #6 & \centering #7 \tabularnewline\nopagebreak[4]
\hline
\end{tabular}\vspace{#1}
\tabularnewline[-\arrayrulewidth]\nopagebreak[4]
}

\newcommand*\ecvlastlanguage[7][3pt]{\ecvlanguage[#1]{#2}{#3}{#4}{#5}{#6}{#7}}
\newcommand*\ecvlanguagefooter[1][0pt]{\ecvitem[#1]{}{\footnotesize\textcolor{torea-bay}{\ecv@levelskey: A1/A2: \ecv@cefbasickey\ - B1/B2: \ecv@cefindepkey\ - C1/C2: \ecv@cefprofkey}\par\ecv@langfooterkey}}

% See the Common European Framework of Reference for Languages:
% http://www.coe.int/T/E/Cultural_Co-operation/education/Languages/Language_Policy/Common_Framework_of_Reference/default.asp
\ifx\ecv@booktabs\undefined % Use table conforming to EU model
  \newcommand*\ecvCEF[2]{%
  %\setlength\tabcolsep{1mm}
  \begin{tabular}{@{}>{\footnotesize}p{.2\ecv@langparwidth}@{\hspace{1mm}}>{\footnotesize\centering}p{.74\ecv@langparwidth}@{}}
#1 & #2\tabularnewline
  \end{tabular}
  }
\else
  \newcommand*\ecvCEF[2]{%
  %\setlength\tabcolsep{1mm}
  \begin{tabular}{@{}>{\footnotesize}p{.2\ecv@langparwidth}@{\hspace{1mm}}>{\footnotesize\centering}p{.74\ecv@langparwidth}@{}}
#1 & #2\tabularnewline
  \end{tabular}
  }
\fi

\newcommand*\ecvAOne{\ecvCEF{A1}{\ecv@cefbasickey}}
\newcommand*\ecvATwo{\ecvCEF{A2}{\ecv@cefbasickey}}
\newcommand*\ecvBOne{\ecvCEF{B1}{\ecv@cefindepkey}}
\newcommand*\ecvBTwo{\ecvCEF{B2}{\ecv@cefindepkey}}
\newcommand*\ecvCOne{\ecvCEF{C1}{\ecv@cefprofkey}}
\newcommand*\ecvCTwo{\ecvCEF{C2}{\ecv@cefprofkey}}

\def\ecv@kern{\kern0.5pt}
%\def\ecv@kern{}
\newcommand*{\ecvTitleKern}[1]{\def\ecv@kern{\kern#1}}
\newlength\ecv@rulewidth
\newlength\ecv@colsep
\newlength\ecv@leftcolwidth
\newlength\ecv@rightcolwidth
\newlength\ecv@extrarowheight
\newcommand*{\ecvRuleWidth}[1]{\setlength\ecv@rulewidth{#1}}
\newcommand*{\ecvColSep}[1]{%
  \addtolength{\ecv@leftcolwidth}{\ecv@colsep}
  \addtolength{\ecv@rightcolwidth}{\ecv@colsep}
  \setlength\ecv@colsep{#1}
  \addtolength{\ecv@leftcolwidth}{-\ecv@colsep}
  \addtolength{\ecv@rightcolwidth}{-\ecv@colsep}}
\newcommand*{\ecvLeftColumnWidth}[1]{\setlength\ecv@leftcolwidth{#1}%
             \setlength{\ecv@rightcolwidth}{\textwidth}
            \addtolength{\ecv@rightcolwidth}{-\ecv@leftcolwidth}
            \addtolength{\ecv@rightcolwidth}{-2\ecv@colsep}
            \addtolength{\ecv@rightcolwidth}{-\ecv@rulewidth}}
\newcommand*{\ecvExtraRowHeight}[1]{\setlength\ecv@extrarowheight{#1}}
\newcommand*{\ecvNoHorRule}{\def\ecv@hrule{}}
\newcommand*{\ecvWithHorRule}{\def\ecv@hrule{\cline{1-1}}}
% Initialization
\ecvRuleWidth{\arrayrulewidth}
\setlength\ecv@colsep{8pt}
\setlength\ecv@leftcolwidth{50mm} % Default left column width
\ecvExtraRowHeight{0pt}
\ecvWithHorRule

% Icon size
\newlength\ecv@iconwidth
\newcommand*{\ecvIconwidth}[1]{\setlength\ecv@iconwidth{#1}}
\ecvIconwidth{3.70mm}

% Logo size
\newlength\ecv@logowidth
\newcommand*{\ecvLogoWidth}[1]{\setlength\ecv@logowidth{#1}}
\ecvLogoWidth{4.50cm}

%\typeout{logo width=\the\ecv@logowidth}

% Text bullet
\newcommand{\ecvbullet}{\raisebox{.35ex}[0cm][0cm]{\tiny\textbullet}}
                                          
\newenvironment{europecv}{%
  \ecvLeftColumnWidth{\ecv@leftcolwidth}
  \setlength\arrayrulewidth{\ecv@rulewidth}
  \setlength\extrarowheight{\ecv@extrarowheight}
  \setlength\LTleft{0pt}
  \setlength\LTright{0pt}
  % Language table paragraph width
  \setlength\ecv@langparwidth{.199\ecv@rightcolwidth}
  \addtolength{\ecv@langparwidth}{-2\tabcolsep}
  \addtolength{\ecv@langparwidth}{-2\arrayrulewidth}
% Begin
\begin{longtable}[l]{@{}>{\raggedleft}p{\ecv@leftcolwidth}@{\hspace{\ecv@colsep}}@{\extracolsep{\ecv@colsep}}p{\ecv@rightcolwidth}@{}}
  %\ecv@hrule
  \ifx\@empty\draweuropasslogo\else
    % Any better way of achieving the same result?!?
    \draweuropasslogo&\large\textcolor{curious-blue}{Curriculum vitae} \tabularnewline
  \fi
  \ifx\@empty\ecvtitle\else
     \ifx\@empty\draweuropasslogo
       & \tabularnewline[-.5em]
     \fi
     \ecvtitle &\tabularnewline
  \fi
}
{\end{longtable}}

\newcommand{\ecvsection}[2][10pt]{%
\tabularnewline
\noindent\parbox[b]{\hsize}{\raggedleft\textcolor{torea-bay}{\MakeTextUppercase{#2}}}\vspace{#1} & \color{boston-blue}\hrulefill\vspace{#1}\tabularnewline\nopagebreak}


\newcommand{\ecvposition}[2]{%
 \ecvitem{\MakeTextUppercase{#1}}{\LARGE #2}
}

\newcommand{\ecvitemdate}[2]{%
 \ecvitem{#1}{\Large \textcolor{torea-bay}{#2}}
}

\newcommand{\ecvworkexperience}[6][20pt]{%
 \ecvitem[#1]{#2}{\begin{Large}\textcolor{torea-bay}{#3}\end{Large}\par\vspace{3pt}
 #4{\par}
 #5{\par\vspace{3pt}}
 #6}
}

\newcommand{\ecveducation}[6][30pt]{%
 \ecvitem[#1]{#2}{\begin{Large}\textcolor{torea-bay}{#3}\end{Large}
 \textcolor{curious-blue}{\hfill\begin{small}#6\end{small}}\par\vspace{3pt}
 #4{\par\vspace{3pt}}
 #5}
}
          
\newif\if@ecvitemstar
\newcommand\ecvitem{\@ifstar{\@ecvitemstartrue \@ecvitem}%
  {\@ecvitemstarfalse\@ecvitem}}
\newcommand\@ecvitem[3][2pt]{%
  \if@ecvitemstar \ecvbullet\ \fi \textcolor{torea-bay}{#2}\vspace{#1} & #3
    \vspace{#1}\tabularnewline}
