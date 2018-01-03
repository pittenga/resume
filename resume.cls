\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[7/12/2015 Custom class to build a resume]
\LoadClass{article}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}

\renewcommand*{\familydefault}{\sfdefault}
% Can we get these into the class so i don't have to add them to the .tex file?
%\pagestyle{fancy}
%\usepackage[headheight=24pt]{geometry}

\newcommand{\resumesection}[1]{ %
  \vspace{-1em}  \section*{#1}
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
  \chead{\fontsize{17}{12} \selectfont #1}
}
\newcommand{\github}[1]{
  \chead{\fontsize{17}{12} \selectfont #1}
}
\newcommand{\address}[2]{
  \rhead{#1 \\ #2}
}
\newcommand{\contact}[2]{
  \lhead{\href{mailto:#1}{#1} \\ #2}
}

\newcommand{\education}[3]{
  \par \noindent
  \begin{tabular}{ p{0.10\textwidth} p{0.8\textwidth} }

  #1 & \parbox[t]{0.7\textwidth}{#2 \\ \it #3} \\
  \end{tabular}
  \vspace{0.5em}
}

\newenvironment{experience}[4]
    {\par \noindent
    \begin{tabular}{ l p{0.78\textwidth} r }
    \parbox[b]{0.1\textwidth}{#1}
     & \parbox[b]{0.7\textwidth}{#2 \\ \it #3}
     & \parbox[b]{0.05\textwidth}{\includegraphics[keepaspectratio, height=5ex]{#4}} \\
     & \begin{itemize}[noitemsep,nolistsep] \vspace{-0.6em}
    }
    {
    \end{itemize}
    \end{tabular}
    \vspace{-1em}
    }

\newcommand{\task}[1]{
    \item{#1}
}

\newenvironment{tasktable}
  {
  \item[]
  \begin{tabular}{ l | l | l }
  }
  {
  \end{tabular}
  }

\newcommand{\emptytask}[1]{
    \item[]{#1}
}
\newenvironment{skills}
    {\par \noindent
    \begin{tabular}{ p{\textwidth} }
    }
    {
    \end{tabular}
    }
