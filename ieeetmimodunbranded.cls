\NeedsTeXFormat{LaTeX2e}

% For some reason ieeecolor presents itself as IEEEtran
% Silence the warning
\usepackage{silence}
\WarningFilter{latex}{You have requested document class `ieeecolor'}

\ProvidesClass{ieeetmimodunbranded}[2025/06/03 v1.0 Simple wrapper around IEEETran for arxiv purposes]

\LoadClass[10pt,a4paper,twoside,journal]{IEEEtran}

\def\journalname{PREPRINT ARCHIVE}

% Define some handy commands
\newcommand{\figref}[1]{Fig.~\ref{#1}}
\newcommand{\tabref}[1]{Table~\ref{#1}}
\newcommand{\secref}[1]{Section~\ref{#1}}
%

\usepackage[colorlinks=true,allcolors=black]{hyperref}