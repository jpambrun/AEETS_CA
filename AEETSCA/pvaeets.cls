\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{pvaeets}[2015/06/10 PV AEETS]

\LoadClass[titlepage]{article}

\RequirePackage{titlesec}
\RequirePackage[frenchb]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage[latin9]{inputenc}
\RequirePackage[]{graphicx}
\RequirePackage{bold-extra}
\RequirePackage{tocloft}
\RequirePackage{tabto}





% Formattage
\renewcommand{\cftsecnumwidth}{25pt}
\renewcommand*\thesection{\arabic{section}.0}
\renewcommand*\thesubsection{\arabic{section}.\arabic{subsection}}
\renewcommand{\labelenumi}{\arabic{enumi}.0} 
\renewcommand{\labelenumii}{\arabic{enumi}.\arabic{enumii}}
\titleformat{\section}{}{\makebox[1.5cm][l]{\bfseries\Large\scshape\thesection}}{0in}{\bfseries\Large\scshape}
\titleformat{\subsection}{}{\makebox[1.5cm][l]{\Large\scshape\thesubsection}}{0in}{\Large\scshape}
\titleformat{\subsubsection}{}{\makebox[1.5cm][l]{\large\bfseries\thesubsubsection}}{0in}{\large\bfseries}
\titleformat{\paragraph}{}{\makebox[1.5cm][l]{\bfseries\theparagraph}}{0in}{\bfseries}
\titleformat{\subparagraph}{}{\makebox[1.5cm][l]{\itshape\thesubparagraph}}{0in}{\itshape}
\setlength{\parindent}{0cm}
\setlength{\parskip}{1em}
\setcounter{secnumdepth}{5}





%title page
\newcommand{\typeassemble}[1]{\newcommand\thetypeassemble{#1}}
\newcommand{\numeroassemble}[1]{\newcommand\thenumeroassemble{#1}}
\newcommand{\adopte}[1]{\newcommand\theadopte{#1}}
\renewcommand{\date}[1]{\newcommand\thedate{#1}}
\newcommand{\local}[1]{\newcommand\thelocal{#1}}
\renewcommand\maketitle{
 %\begin{titlepage}
 \begin{center}
  {\large\scshape Association  Étudiante de\\ l’École de Technologie Supérieure}\\[3cm]
  \includegraphics[width=0.70\textwidth]{AEETS-LOGO-GRIS-BLANC.png}~\\[3cm]
  
  \if 1\thenumeroassemble
    Procès-verbal de la 1er assemblée \thetypeassemble \\
  \else
     Procès-verbal de la \thenumeroassemble e assemblée \thetypeassemble \\
  \fi


  du 36e conseil administratif tenue le\\
  \thedate{} au local \thelocal{} à 17 h\\[2cm]
  \ifdefined \theadopte
    Adopté le \theadopte
  \else
    Non adopté
  \fi
 \end{center}
 \thispagestyle{empty}
 %\end{titlepage}
}

% macro
\newcommand{\vote}[3]{
\NumTabs{5}
    \par
    Pour : \tab{#1} \\
    Contre :  \tab{#2} \\
    Abstention :  \tab{#3}\\
}

\newcommand{\proposeur}[2]{
    \NumTabs{5}
    \par
    Proposeur : \tab{#1} \\
    Appuyeur :  \tab{#2} \\
}

\newcommand{\pj}[2]{
    \NumTabs{3}
    \par
    Pièce-jointe : \tab{\textit{#1}} \\
}

\newcommand{\Acons}{Adoption consensuelle}
\newcommand{\Adouble}{Adoption à majorité double}
\newcommand{\Auna}{Adoption unanime}
\newcommand{\Amaj}{Adoption à majorité}
\newcommand{\Rrest}{Rejet par restriction}
\newcommand{\Rmaj}{Rejet à majorité}
\newcommand{\ouverture}[2]{\par (Ouverture de l’assemblée à #1 h #2)}
\newcommand{\presidium}[2]{\par Que l’on élise #1 à la présidence et #2 en tant que secrétaire.}
\newcommand{\pv}[1]{Que l’on adopte le procès-verbal #1.}


\newcommand{\info}[3]{\par Que #1 tienne(nt) un point d’information de #2 minute(s) sur le sujet « #3 ».}
\newcommand{\infoQ}[4]{\par Que #1 tienne(nt) un point d’information de #2 minute(s) suivi d’une période de question de #3 minute(s) sur le sujet « #4 ».}
\newcommand{\infoP}[4]{\par Que #1 tienne(nt) un point d’information de #2 minute(s) suivi d’une plénière de question de #3 minute(s) sur le sujet « #4 ».}

\newcommand{\RetourPrincipale}{
  \par
  \begin{center}
    \underline{Retour sur la principale}
  \end{center}
}


\newcommand{\RetourPrincipaleA}{
  \par
  \begin{center}
    \underline{Retour sur la principale tel qu'amendée}
  \end{center}
}