\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{budisicposter}[2020/10/14 Poster for Budisic Group]

%% Adapted from `tikzposter-example.tex',

%% Modify the size of the paper for the usual 4 ft x3 ft poster size
\PassOptionsToPackage{paperwidth=48in, paperheight=36in,
  textwidth=48in, textheight=36in,
  innermargin=1in, margin=.25in,
  centering}{geometry}
\PassOptionsToPackage{dvipsnames}{xcolor}
\LoadClass[25pt, landscape,blockverticalspace=0.5in, colspace=0.5in, subcolspace=0.33in]{tikzposter} %Default values for poster format options.
\tikzposterlatexaffectionproofoff % remove tikzposter logo

%% fonts: helvetica + palatino
% Euler for math | Palatino for rm | Helvetica for ss | Courier for tt
\renewcommand{\rmdefault}{ppl} % rm
\linespread{1.05}        % Palatino needs more leading
\RequirePackage[scaled]{helvet} % ss
\RequirePackage{courier} % tt
%\RequirePackage{euler} % math
\RequirePackage{eulervm} % a better implementation of the euler package (not in gwTeX)
\normalfont
\RequirePackage[T1]{fontenc}
\renewcommand{\familydefault}{\sfdefault} % use sans-serif

%%%% OTHER IMPORTANT PACKAGES
\RequirePackage{amsmath, amsthm, amssymb} %AMS math
\RequirePackage{bm}% bold math
\RequirePackage{color} % colored text
% \RequirePackage[pdftex,colorlinks=true,
% allcolors=blue
% ]{hyperref}% add hypertext capabilities
\RequirePackage{paralist}% for compactitem used by Marko
\RequirePackage{multirow}% multicolumn/row cells in tables
\RequirePackage{url} % add auto-linked urls
\RequirePackage{mathtools} % shortintertext, and other useful math-related features
\RequirePackage{siunitx} % SI units
\sisetup{per-mode = symbol}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{pgfplots}
\pgfplotsset{compat=newest}

\usetikzlibrary{calc} % relative positioning of nodes
\usetikzlibrary{arrows.meta} % for arrow annotations
\tikzstyle{arrow}+=[<-,line width=4pt, >={Latex[width=.2in,length=.2in]}, color=colorOne]
\tikzstyle{bubble}+=[anchor=west,color=colorOne,right,text width=2in,fill=white, fill opacity=0.75, text opacity=1,draw]


% choose one bibliography package:
\RequirePackage[backend=bibtex,citestyle=numeric-comp]{biblatex}
%\RequirePackage{amsrefs} % references
%%%%

% -- PREDEFINED THEMES ---------------------- %
 % Choose LAYOUT:  Default, Basic, Rays, Simple, Envelope, Wave, Board, Autumn, Desert,
\usetitlestyle{Envelope}

\usetheme{Autumn}

 % colors based on Clarkson visual identity guide
 % rotating colorOne/Two/Three and the countries below leads to various color themes
 \definecolorpalette{Clarkson}{
   \definecolor{colorOne}{HTML}{004E42}
   \definecolor{colorTwo}{HTML}{D7D2CB}
   \definecolor{colorThree}{HTML}{FFCD00}
 }

 % options: Default, Australia, Britain, Sweden, Spain, Russia, Denmark,
 \usecolorstyle[colorPalette=Clarkson]{Germany} % try Spain for easy Germany alternative

 \usetitlestyle{Filled}

 %% add logos to maketitle

 \let\oldmaketitle\maketitle
 \renewcommand{\maketitle}{\oldmaketitle
 \node[anchor=west] at (TP@title.west) {\hspace{1in}\includegraphics[height=3in]{logos/clarkson-seal.png}};
 }
