\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}


\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

\usepackage{fontspec,xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text}
%%% changed by Karol Kozioł for ShareLaTeX
%\setmainfont[Color=primary]{Helvetica Light}
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue UltraLight}
\setmainfont
[Color=primary,
BoldFont=texgyreheros-bold.otf,
ItalicFont=texgyreheros-italic.otf,
BoldItalicFont=texgyreheros-bolditalic.otf
]
{texgyreheros-regular.otf}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Lato-Hairline.ttf}


\usepackage{titlesec}

\titleformat{\section}{\color{headings}
\scshape
%\fontspec{Helvetica Light} %commented by KK
\fontspec{texgyreheros-regular.otf}
\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

\titleformat{\subsection}{\color{subheadings}
%\fontspec{Helvetica} %commented by KK
\fontspec{texgyreheros-regular.otf}
\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsection}[1]{\color{subheadings}
%\fontspec{Helvetica} %commented by KK
\fontspec{texgyreheros-regular.otf}
\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape
%\fontspec{Heiti SC Medium} %commented by KK
\fontspec{Lato-Regular.ttf}
\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

\newcommand{\location}[1]{\color{headings}\raggedright\scshape
%\fontspec{Heiti SC Medium} %commented by KK
\fontspec{Lato-Regular.ttf}
\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

%\renewcommand{\endsubsection}[0]{\vspace{8pt}}  %commented by KK
\def\endsubsection{\vspace{8pt}}

\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

\titlespacing{\section}{0pt}{0pt}{0pt}