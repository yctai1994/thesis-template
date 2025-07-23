\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}
\gdef\@ClassName{thesis}

\LoadClass[a4paper, 12pt, oneside]{book}

\RequirePackage{lipsum}
\RequirePackage{libertine}

% To set space between lines
\RequirePackage{setspace}
% For exntend used of hypertext in the document(include  \phantomsection)
\RequirePackage{hyperref}
% For custom header and footer of
\RequirePackage{fancyhdr}
% Alternative headings for Toc, LoF, LoT
\RequirePackage{titletoc}
% For custom content in ToC, LoF, and LoT (add dots between title and page numbers)
\RequirePackage{tocloft}
% For page layout
\RequirePackage[a4paper]{geometry}
% Indent first paragraph
\RequirePackage{indentfirst}
% To config figures
\RequirePackage{graphicx}
% Using math tools, e.g. "equation" environment
\RequirePackage{amsmath}
% For special math symbol
\RequirePackage{amssymb}
% Specail Font in math zone
\RequirePackage{amsfonts}
\RequirePackage{unicode-math}
\setmathfont[Scale = MatchUppercase]{LibertinusMath-Regular.otf}
% For better bib (show "visited on" text after an url)
\RequirePackage[%
    backend = biber, 
    style = phys, 
    articletitle = true, 
    chaptertitle = true, 
    sorting = none
]{biblatex}
% For chemical formula
\RequirePackage{chemformula}
% For unit transform
\RequirePackage{siunitx}
\DeclareSIUnit\angstrom{\text{Å}}
\sisetup{%
    propagate-math-font  = true,%
    reset-math-version   = false,%
    text-family-to-math  = false,%
    text-series-to-math  = true,%
    per-mode             = reciprocal,%
    inter-unit-product   = \ensuremath{{}\cdot{}},%
    print-unity-mantissa = false,%
    separate-uncertainty = true,%
    multi-part-units     = single,%
    range-units          = repeat%
}

%%% ToC Generator %%%
\def\makeToC{
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{\textbf{Table of Contents}}
    \tableofcontents
}

%%% Bibliography Generator %%%
\def\makeBib{
    % Add Bibliography to ToC
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{\textbf{References}}
    % Print bib and set its title
    \printbibliography[title={\makebox[5.5em][s]{References}}]
}

%%% Page Layout %%%
\geometry{a4paper,%
    left     = 2cm,%
    right    = 2cm,%
    top      = 2.5cm,%
    bottom   = 2.5cm,%
    footskip = 1cm%
}

%%% Header and Footer %%%
\pagestyle{fancy}
\fancyhf{} % Clear origin header and footer configuration
\renewcommand{\headrulewidth}{0pt}
\cfoot{\thepage}

% Set indent width for first line in a paragraph to two space
\setlength{\parindent}{2em}

% Set space between paragraphs
\setlength{\parskip}{0.5\baselineskip}%
