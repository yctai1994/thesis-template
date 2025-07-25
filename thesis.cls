\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% macro definitions
% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

\newcommand{\cjkFont}[1]{ \setCJKmainfont{#1} }

\newcommand{\cjkTitle}[1]{\def\@cjkTitle{#1}}
\newcommand{\engTitle}[1]{\def\@engTitle{#1}}

\newcommand{\cjkUniversityName}[1]{\def\@cjkUniversityName{#1}}
\newcommand{\engUniversityName}[1]{\def\@engUniversityName{#1}}

\newcommand{\cjkCollegeName}[1]{\def\@cjkCollegeName{#1}}
\newcommand{\engCollegeName}[1]{\def\@engCollegeName{#1}}

\newcommand{\cjkInstituteName}[1]{\def\@cjkInstituteName{#1}}
\newcommand{\engInstituteName}[1]{\def\@engInstituteName{#1}}

\newcommand{\cjkStudentName}[1]{\def\@cjkStudentName{#1}}
\newcommand{\engStudentName}[1]{\def\@engStudentName{#1}}

\newcommand{\cjkAdvisorName}[1]{\def\@cjkAdvisorName{#1}}
\newcommand{\engAdvisorName}[1]{\def\@engAdvisorName{#1}}

\newcommand{\cjkDegreeYear}[1]{\def\@cjkDegreeYear{#1}}
\newcommand{\engDegreeYear}[1]{\def\@engDegreeYear{#1}}

\newcommand{\cjkDegreeMonth}[1]{\def\@cjkDegreeMonth{#1}}
\newcommand{\engDegreeMonth}[1]{\def\@engDegreeMonth{#1}}

\newcommand{\engDegree}[1]{\def\@engDegree{#1}}
\newcommand{\engField}[1]{\def\@engField{#1}}
\newcommand{\engLocation}[1]{\def\@engLocation{#1}}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% class and packages
% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

\LoadClass[a4paper, 12pt, oneside]{book}

% For English typing
\RequirePackage{libertine}

% For CJK typing
\RequirePackage[BoldFont, SlantFont, CJKchecksingle, CJKmath = true]{xeCJK}

% Using math tools, e.g. "equation" environment
\RequirePackage{amsmath}
% For special math symbol
\RequirePackage{amssymb}
% Specail Font in math zone
\RequirePackage{amsfonts}
\RequirePackage{unicode-math}
\setmathfont[Scale = MatchUppercase]{LibertinusMath-Regular.otf}

% To set space between lines
\RequirePackage{setspace}

% For exntend used of hypertext in the document(include \phantomsection)
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

% For "tabularx" environment
\RequirePackage{tabularx}

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

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% page layout
% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

\geometry{ a4paper, hmargin = 2cm, vmargin = 2.5cm, footskip = 1cm }

\setlength{\parindent}{2em} % Set indent width for first line in a paragraph to two space
\setlength{\parskip}{0.5\baselineskip} % Set space between paragraphs

\pagestyle{fancy}
\fancyhf{} % clear origin header and footer configuration
\renewcommand{\headrulewidth}{0pt}
\cfoot{\thepage}

% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
% special page generators
% = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

\def\makeToC{
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{\textbf{Table of Contents}}
    \tableofcontents
}

\def\makeBib{
    \cleardoublepage
    \phantomsection % add bibliography to ToC
    \addcontentsline{toc}{chapter}{\textbf{References}}
    \printbibliography[title = References] % print bib and set its title
}

\def\makeCoverPage{
    \newgeometry{ hmargin = 2cm, vmargin = 3cm, footskip = 0cm } % special cover page layout
    \thispagestyle{empty} % produces empty heads and feet - no page numbers.

    \renewcommand{\baselinestretch}{1.2}\selectfont

    \begin{center}
        \begin{doublespacing}

            \fontsize{18}{27}{\selectfont \@cjkUniversityName} \\
            \fontsize{18}{27}{\selectfont \@cjkInstituteName} \\
            \fontsize{18}{27}{\selectfont 博士論文} \\

            \vfill

            \fontsize{14}{14}{\selectfont \@engInstituteName} \\
            \fontsize{16}{16}{\selectfont \@engUniversityName} \\
            \fontsize{16}{16}{\selectfont Doctoral Dissertation} \\

            \vfill

            \fontsize{18}{18}{\selectfont \@cjkTitle} \\[0.5\baselineskip]
            \fontsize{18}{18}{\selectfont \@engTitle} \\

            \vfill

            \fontsize{18}{18}{\selectfont
                \begin{tabular}{rl}
                    \makebox[2.6cm][s]{研{\hfill}究{\hfill}生}：&
                        \@cjkStudentName (\@engStudentName) \\[1\baselineskip]
                    \makebox[2.6cm][s]{指{\hfill}導{\hfill}教{\hfill}授}：&
                        \@cjkAdvisorName (\@engAdvisorName)
                \end{tabular}
            }

            \vfill
            \fontsize{18}{18}{\selectfont \@cjkDegreeYear\ \@cjkDegreeMonth} \\
            \vspace{1.5\baselineskip}
            \fontsize{18}{18}{\selectfont \@engDegreeMonth\ \@engDegreeYear} \\
        \end{doublespacing}
    \end{center}

    \restoregeometry % Restore Normal Page Layout
}

\def\makeTitlePage{
    \thispagestyle{empty}

    \renewcommand{\baselinestretch}{1.2}\selectfont

    \begin{center}
        \begin{doublespacing}

            \fontsize{18}{18}{\selectfont \@cjkTitle} \\
            \fontsize{18}{18}{\selectfont \@engTitle} \\

        \end{doublespacing}

        \vfill

        \renewcommand{\arraystretch}{1.5}
        \fontsize{14}{14}{\selectfont
            \begin{tabularx}{\textwidth}{@{}p{2.5cm}@{}Xl@{}}
                \makebox[2.515cm][s]{研{\hfill}究{\hfill}生：}&\@cjkStudentName\hfill Student:&\@engStudentName \\
                \makebox[2.515cm][s]{指{\hfill}導{\hfill}教{\hfill}授：}&\@cjkAdvisorName\ 博士\hfill Advisor:&Dr.\ \@engAdvisorName \\
            \end{tabularx}
        }
        \renewcommand{\arraystretch}{1}

        \vfill

        \begin{doublespacing}
            \fontsize{14}{14}{\selectfont \@cjkUniversityName} \\
            \fontsize{14}{14}{\selectfont \@cjkInstituteName} \\
            \fontsize{14}{14}{\selectfont 博士論文} \\
        \end{doublespacing}

        \vfill

        \fontsize{14}{14}{\selectfont
            A Dissertation \\
            Submitted to \@engInstituteName \\
            \@engCollegeName \\
            \@engUniversityName \\
            in partial Fulfillment of the Requirements \\
            for the Degree of \\
            \@engDegree
            \ifthenelse{\equal{\@engField}{}}{}{\\ in \\ \@engField}
        }

        \vfill

        \fontsize{14}{14}{\selectfont \@engDegreeMonth\ \@engDegreeYear} \\
        \fontsize{14}{14}{\selectfont \@engLocation} \\
        \vspace{1.5\baselineskip}
        \fontsize{14}{14}{\selectfont \@cjkDegreeYear\ \@cjkDegreeMonth} \\

    \end{center}
}
