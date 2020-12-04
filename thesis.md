---
header-includes:
    - \title{Writing a Thesis Using Markdown}
    - \author{Sachiko Tajima}
    - \studentid{s1250117}
    - \supervisor{Prof. Yutaka Watanobe}
documentclass: U-AizuGT
classoption: 
    - ams
    - uplatex
bibliography:
    - thesis.bib
---

# Abstract

This is a template writtten is a Markdown following the University of Aizu graduation thesis format \cite{graduation-thesis}. If you have any quessstions or something you don't understand, just refer to kuee-thesis-markdown \cite{kuee-thesis-markdown} .

# Introduction
If you want to put figure or graph in thesis, write in the text as in \LaTeX writing.

The \LaTeX Distribution kit includes the following files in table \ref{tab:kit} .
\begin{table}[htbp]
  \caption{The kit distribution}\label{tab:kit}
  \begin{center}
    \begin{tabular}{ll}
      \verb+U-AizuGT.cls+ &  \LaTeX2e{} 's document classfile       \\
      \verb+ieicetr.bst+ & document style file \cite{ieicetr} \\
      \verb+thesis.bib+ & references file              \\
    \end{tabular}
  \end{center}
\end{table}

## Reference

Nara suteki daigaku \cite{nara-nice} tekina.

## Table

aiueo kakikukeko sashisuseso tatituteto naninuneno hahihuheho mamimumemo yayuyo rarirurero wawon.

\begin{table}[htbp]
  \caption{Sample of Figure $\cdot$ Table}\label{tab:fig}
  \begin{center}
    \begin{tabular}{|l|r|}
      \hline
      \verb+\textwidth+ & 424pt + 1cm  \\ \hline
      \verb+\textheight+ & 604pt + 67pt \\ \hline
      \verb+\oddsidemargin+ & 0pt          \\ \hline
      \verb+\evensidemargin+ & 0pt          \\ \hline
      \verb+\topmargin+ & 0pt          \\ \hline
      \verb+\headheight+ & 0pt          \\ \hline
      \verb+\headsep+ & 0pt          \\ \hline
      \verb+\footskip+ & 0pt          \\ \hline
    \end{tabular}
  \end{center}
\end{table}

## Figure

\begin{figure}[htbp]
  \centering
  \includegraphics[scale = 1.0]{image.png}
  \caption{hogehoge}\label{fig:hogehoge}
\end{figure}


# Material & Methods
text tessssx ttexte

# Results
t e x t t e s s  ss x t  t exte

# Conclusion
text tes sssx tt exte

# Bobliography
text tess ssxt text e

# Acknowledgements
texttessssxttexte
