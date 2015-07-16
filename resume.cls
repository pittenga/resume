\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[7/12/2015 Custom class to build a resume]
\LoadClass{article}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}

% Can we get these into the class so i don't have to add them to the .tex file?
%\pagestyle{fancy}
%\usepackage[headheight=24pt]{geometry}

\newcommand{\resumesection}[1]{ %
  \section*{#1}%
}
\newcommand{\resumesubsection}[1]{ %
  \subsection*{#1}%
}
\newcommand{\resumesubsubsection}[1]{ %
  \subsubsection*{#1}%
}
\newcommand{\datedsubsection}[2]{ %
  \subsection*{#1 \hfill\it #2}%
}
\newcommand{\name}[1]{
  \chead{\fontsize{17}{12} \selectfont Aaron Pittenger}
}
\newcommand{\address}[2]{
  \rhead{#1 \\ #2}
}
\newcommand{\contact}[2]{
  \lhead{#1 \\ #2}
}

\newcommand{\education}[3]{
  \par \noindent
  \begin{tabular}{ p{0.10\textwidth} p{0.8\textwidth} }

  #1 & \parbox[t]{0.7\textwidth}{#2 \\ \it #3} \\
  \end{tabular}
  \vspace{1em}
}

\newenvironment{experience}[3]
    {\par \noindent
    \begin{tabular}{ p{0.10\textwidth} p{0.8\textwidth} }

    #1 & \parbox[t]{0.7\textwidth}{#2 \\ \it #3} \\
     & \begin{itemize}[noitemsep,nolistsep]
    }
    {
    \end{itemize}
    \end{tabular}
    \vspace{-1em}
    }

\newcommand{\task}[1]{
    \item{#1}
}
\newenvironment{skills}
    {\par \noindent
    \begin{tabular}{ p{0.1\textwidth} p{0.8\textwidth} }
    }
    {
    \end{tabular}
    }
