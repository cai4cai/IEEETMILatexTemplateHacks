\NeedsTeXFormat{LaTeX2e}

% For some reason ieeecolor presents itself as IEEEtran
% Silence the warning
\usepackage{silence}
\WarningFilter{latex}{You have requested document class `ieeecolor'}

\ProvidesClass{ieeetmimod}[2025/04/10 v1.0 Patched ieeecolor class for TMI]

\LoadClass[journal,twoside,web]{ieeecolor}
\usepackage{tmi}

\usepackage{graphicx}

% Define some handy commands
\newcommand{\figref}[1]{Fig.~\ref{#1}}
\newcommand{\tabref}[1]{Table~\ref{#1}}
\newcommand{\secref}[1]{Section~\ref{#1}}
%

% Fix ieeecolor's \caption
% See https://tex.stackexchange.com/a/583096/172400
\usepackage{etoolbox}
\makeatletter
\@ifundefined{color@begingroup}%
  {\let\color@begingroup\relax
   \let\color@endgroup\relax}{}%
\def\fix@ieeecolor@hbox#1{%
  \hbox{\color@begingroup#1\color@endgroup}}
\patchcmd\@makecaption{\hbox}{\fix@ieeecolor@hbox}{}{\FAILED}
\patchcmd\@makecaption{\hbox}{\fix@ieeecolor@hbox}{}{\FAILED}
%

% Allow sufigures with the subcaption package
% See https://www.michaelshell.org/tex/ieeetran/#:~:text=subcaption
\WarningFilter{caption}{Unknown document class (or package)}

\makeatletter
\let\MYcaption\@makecaption
\makeatother
\usepackage[font=footnotesize]{subcaption}
\makeatletter
\let\@makecaption\MYcaption
\makeatother
%

% Not sure why this is needed but it is in the official template
\def\BibTeX{{\rm B\kern-.05em{\sc i\kern-.025em b}\kern-.08em
    T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}
%

% Load hyperref last unless you know better
% As mentioned in ieeecolor.cls a patch is needed for citations
\makeatletter
\let\NAT@parse\undefined
\makeatother
\usepackage[colorlinks=true,allcolors=black]{hyperref}
%