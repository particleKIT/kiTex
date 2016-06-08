%%
%% This is file `KITfax.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% KITbrief.dtx  (with options: `fax')
%% 
%% This is a generated file.
%% 
%% 
%% Copyright (C) 2010-2016 by Klaus Braune <klaus.braune@kit.edu>,
%% Steinbuch Centre for Computing (SCC) at Karlsruhe Institute of Technology (KIT)
%% 
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\RequirePackage{rcs}
\RCS $Date: 2016/02/19 15:06:23 $
\RCS $Revision: 1.14 $
\ProvidesClass{KITfax}
    [\RCSRawDate\space v\RCSRevision\space Document class KITfax]
\newif\ifKIT@hyperref\KIT@hyperreffalse
\DeclareOption{hyperref}{\KIT@hyperreftrue}
\DeclareOption{CS}{\AtEndOfClass{\CS}}
\DeclareOption{CN}{\AtEndOfClass{\CN}}
\DeclareOption{datenum}{\AtEndOfClass{\DateNumbers}}
\DeclareOption{datetxt}{\AtEndOfClass{\DateText}}
\newif\ifKIT@pagenum\KIT@pagenumtrue
\let\Nopagenumbers=\KIT@pagenumfalse
\let\Unnumbered=\KIT@pagenumfalse
\let\Unnummeriert=\KIT@pagenumfalse
\DeclareOption{nopagenumbers}{\KIT@pagenumtrue}
\DeclareOption{unnumbered}{\KIT@pagenumtrue}
\DeclareOption{unnummeriert}{\KIT@pagenumtrue}
\def\KIT@clrmod{cmyk}
\DeclareOption{cmyk}{\def\KIT@clrmod{cmyk}}
\DeclareOption{rgb}{\def\KIT@clrmod{rgb}}
\def\KIT@cmod{\BW}
\DeclareOption{bw}{\def\KIT@cmod{\BW}}
\DeclareOption{sw}{\def\KIT@cmod{\BW}}
\DeclareOption{color}{\def\KIT@cmod{\Color}}
\DeclareOption{farbig}{\def\KIT@cmod{\Color}}
\newif\ifKIT@De\KIT@Detrue
\DeclareOption{deutsch}{\AtEndOfClass{\German}%
  \PassOptionsToPackage{english,ngerman}{babel}}
\DeclareOption{german}{\AtEndOfClass{\German}%
  \PassOptionsToPackage{english,ngerman}{babel}}
\DeclareOption{ngerman}{\AtEndOfClass{\German}%
  \PassOptionsToPackage{english,ngerman}{babel}}
\DeclareOption{germanb}{\AtEndOfClass{\German}%
  \PassOptionsToPackage{english,ngerman}{babel}}
\DeclareOption{englisch}{\AtEndOfClass{\English}%
  \PassOptionsToPackage{ngerman,english}{babel}}
\DeclareOption{english}{\AtEndOfClass{\English}%
  \PassOptionsToPackage{ngerman,english}{babel}}
\DeclareOption{UKenglish}{\AtEndOfClass{\English}%
  \PassOptionsToPackage{ngerman,english}{babel}}
\DeclareOption{USenglish}{\AtEndOfClass{\English}%
  \PassOptionsToPackage{ngerman,english}{babel}}
\let\KIT@ClOpts=\relax
\DeclareOption*{\IfFileExists{\CurrentOption.tex}%
  {\AtEndOfClass{\input{\CurrentOption.tex}}}%
  {\PassOptionsToClass{\CurrentOption}{dinbrief}}}
\ProcessOptions*
\ifx\KIT@ClOpts\relax
  \PassOptionsToClass{a4paper}{dinbrief}
\else
  \PassOptionsToClass{\KIT@ClOpts}{dinbrief}
\fi
\PassOptionsToPackage{\KIT@clrmod}{KITcolors}
\LoadClass[a4paper]{dinbrief}
\let\DB@Enddocument=\enddocument
\def\enddocument{\@dofilelist\DB@Enddocument}
\RequirePackage{mathpazo}
\RequirePackage{uarial}
\RequirePackage[TS1,T1]{fontenc}
\ifKIT@hyperref\RequirePackage{hyperref}\fi
\RequirePackage{bophook}
\def\KIT@State{}
\RequirePackage{KITcolors}
\colorlet{KITrframe}{KITblack}
\colorlet{KIT@foot}{KITblack}
\colorlet{KITfoot}{KIT@foot}
\RequirePackage{KITdefs}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{calc,refcount}
\KIT@Framewd=5mm
\KIT@RFramewd=.5pt
\KIT@Linewd=.5pt
\KIT@MFllx=12.5mm
\KIT@MFlly=15mm
\KIT@MFurx=197.5mm
\KIT@MFury=287mm
\newcommand{\KIT@MFodd}{5mm}
\newcommand{\KIT@MFHdh}{10mm}
\newcommand{\KIT@MFbadd}{15mm}
\newcounter{KIT@ltr}
\def\theKIT@ltr{\roman{KIT@ltr}}
\newcounter{KIT@ctr}
\setlength{\oddsidemargin}{20mm-1in}
\setlength{\evensidemargin}{20mm-1in}
\renewcommand{\familydefault}{\sfdefault}
\textwidth=170mm
\textheight=230mm
\advance\topmargin by -.1mm
\let\KIT@pgsz=\footnotesize
\enabledraftstandard
\nowindowrules
\nowindowtics
\newsavebox{\KIT@box}
\newsavebox{\KIT@boxii}
\let\KIT@letter=\letter
\long\def\letter#1{%
  \savebox{\KIT@box}[55mm][l]{%
    \parbox[t]{60mm}{\raggedright%
      \fontsize{8pt}{10.75pt}\selectfont%
      \rule{0pt}{9.5mm}%
      \if\KIT@InstI\relax\relax
        \else{\fontseries{b}\selectfont\KIT@InstI}\\\fi
      \if\KIT@InstII\relax\relax
        \else{\fontseries{b}\selectfont\KIT@InstII}\\\fi
      \vspace{1mm}
      \settowidth{\KIT@Wd}{\KIT@PhoTxtD:~}
      \fontsize{8pt}{10pt}\selectfont%
      \if\KIT@IHd\relax\relax
      \else
        \settowidth{\KIT@tmplen}{\KIT@IHdTxt:~}
        \parbox[t]{60mm}{\raggedright
        \ifdim\KIT@tmplen>\KIT@Wd\KIT@IHdTxt:
          \else\makebox[\KIT@Wd][l]{\KIT@IHdTxt:}\fi
        \KIT@IHd}\\[2.5mm]\fi%
      \fontsize{8pt}{10pt}\selectfont%
      \KIT@Str\if\KIT@Geb\relax\relax\else, \KIT@GebTxt~\KIT@Geb\fi\\
      \KIT@Ort\ifKIT@internat, \KIT@Cntry\fi\\[2.5mm]
      \settowidth{\KIT@tmplen}{\KIT@PhoTxt:~}
      \ifdim\KIT@tmplen>\KIT@Wd\KIT@PhoTxt:
        \else\makebox[\KIT@Wd][l]{\KIT@PhoTxt:}\fi
      \if\KIT@Pho\relax\KIT@PhoI-\KIT@PhoD\else\KIT@Pho\fi\\
      \settowidth{\KIT@tmplen}{\KIT@FaxTxt:~}
      \ifdim\KIT@tmplen>\KIT@Wd\KIT@FaxTxt:
        \else\makebox[\KIT@Wd][l]{\KIT@FaxTxt:}\fi
      \if\KIT@Fax\relax\KIT@FaxI-\KIT@FaxD\else\KIT@Fax\fi\\
      \settowidth{\KIT@tmplen}{\KIT@EmlTxt:~}
      \ifdim\KIT@tmplen>\KIT@Wd\KIT@EmlTxt:
        \else\makebox[\KIT@Wd][l]{\KIT@EmlTxt:}\fi
      \KIT@EmlName\KIT@EmlDomain\\
      \settowidth{\KIT@tmplen}{\KIT@WebTxt:~}
      \ifdim\KIT@tmplen>\KIT@Wd\KIT@WebTxt:
        \else\makebox[\KIT@Wd][l]{\KIT@WebTxt:}\fi
      \parbox[t]{59.5mm-\KIT@Wd}{\raggedright \KIT@PWWW}\\%[2.5mm]
      \vspace{2.5mm}
      \if\KIT@Oic\relax\relax\else
        \settowidth{\KIT@WdF}{\KIT@RefTxtD:~}
        \settowidth{\KIT@tmplen}{\KIT@OicTxt:~}
        \ifdim\KIT@tmplen>\KIT@WdF\KIT@OicTxt:\quad
          \else\makebox[\KIT@WdF][l]{\KIT@OicTxt:}\fi
        \KIT@Oic\\%[2.5mm]%
      \fi
      \settowidth{\KIT@tmplen}{\KIT@Ref}
      \ifdim\KIT@tmplen>0pt
        \settowidth{\KIT@tmplen}{\KIT@RefTxt:~}
        \ifdim\KIT@tmplen>\KIT@WdF\KIT@RefTxt:
          \else\makebox[\KIT@WdF][l]{\KIT@RefTxt:}\fi
        \KIT@Ref\\
      \fi
      \settowidth{\KIT@tmplen}{\KIT@DatTxt:~}
      \ifdim\KIT@tmplen>\KIT@Wd\KIT@DatTxt:
        \else\makebox[\KIT@Wd][l]{\KIT@DatTxt:}\fi
      \KIT@date\\[8.05mm]
      \includegraphics[width=15mm]{\KIT@audit@fgh@bw}\rule{12.5mm}{0pt}
      }%
    \hss}%
  \settodepth{\KIT@Wd}{\usebox{\KIT@box}}%
  \settoheight{\KIT@tmplen}{\usebox{\KIT@box}}%
  \addtolength{\KIT@Wd}{\KIT@tmplen}
  \addtolength{\KIT@Wd}{-\KIT@Spc}%
  \ifdim\KIT@Wd<0pt%
    \global\KIT@vsk=0pt%
   \else%
    \global\KIT@vsk=\KIT@Wd%
   \fi%
  \stepcounter{KIT@ltr}
  \xdef\KIT@pages{KIT@lpage\theKIT@ltr}
  \def\Pages{\pageref{\KIT@pages}}
  \let\Seiten=\Pages
  \KIT@letter{{\fontsize{10pt}{14pt}\selectfont#1}}
  \sbox{\KIT@boxii}{\parbox{80mm}{\raggedright%
      \fontsize{10pt}{14pt}\selectfont#1}}
  \settoheight{\KIT@AddrHt}{\usebox{\KIT@boxii}}
  \settodepth{\KIT@Wd}{\usebox{\KIT@boxii}}
  \addtolength{\KIT@AddrHt}{\KIT@Wd}
  \ifdim\KIT@AddrHt<8mm\KIT@AddrHt=8mm\fi
  \addtolength{\KIT@AddrHt}{28mm}
  \ifdim\KIT@vsk>0pt
    \addtolength{\KIT@AddrHt}{-\KIT@vsk}
    \addtolength{\KIT@AddrHt}{32mm}
  \fi
  \c@footnote \z@
}
\let\KIT@endletter=\endletter
\def\endletter{\label{\KIT@pages}\gdef\KIT@xtrpgs{0}\KIT@endletter}
\let\fax=\letter
\let\endfax=\endletter
\let\KIT@Conc=\subject
\renewcommand{\subject}[1]{\KIT@Conc{\bfseries\KIT@vsp\\#1}}
\let\concern=\subject
\let\Betreff=\subject
\newcommand{\Reference}[1]{\gdef\KIT@Ref{#1}}
\let\Zeichen=\Reference
\let\KIT@Ref=\relax
\let\KIT@RefTxt=\relax
\gdef\yourmail#1{\ClassWarning{KITfax}{The command \string\yourmail\
    is not supported by this class - use \string\Reference\ instead}}
\gdef\IZ#1{\ClassWarning{KITfax}{The command \string\IZ\
    is not supported by this class - use \string\Reference\ instead}}
\let\writer=\Official
\gdef\phone#1#2{\Phone{#1-#2}}
\let\@ntoday=\relax
\let\backaddress=\relax
\def\ps@KIT{%
  \headheight=\lts@headheight
  \headsep=\lts@headsep
  \advance\headsep by 23mm
  \footskip 17.0truemm
  \def\@oddhead{%
    \begin{tikzpicture}
      \useasboundingbox (20mm,276.7mm) rectangle (20mm,276.7mm);
      \KIT@MFlly=15mm
      \KIT@MFrameRA
      \pgftext[at=\pgfpoint{20mm}{281mm},left,top]
              {\includegraphics[width=40.2mm]{\KIT@logo}}
      \pgftext[at=\pgfpoint{189.65mm}{281mm},right,top]{\KIT@pgsz\thepage}
      \pgftext[at=\pgfpoint{20mm}{6mm},left,base]
        {\fontsize{8pt}{10pt}\selectfont\raggedright\KIT@Text}
      \pgftext[at=\pgfpoint{198mm}{6mm},right,base]
        {\fontsize{15pt}{18pt}\bfseries\color{KITfoot}\KIT@Web}
    \end{tikzpicture}%
    }
  \def\@oddfoot{}
  \let\@evenhead=\@oddhead
  \let\@evenfoot=\@oddfoot
  }
\newlength{\KIT@Wd}
\newlength{\KIT@WdF}
\newlength{\KIT@Spc}
\setlength{\KIT@Spc}{23mm}
\newlength{\KIT@vsk}
\newlength{\KIT@AddrHt}
\let\KITWWW=\KITURL
\gdef\KIT@CS@Str{Kaiserstr.~12}
\gdef\KIT@CS@Ort{76131 Karlsruhe}
\gdef\KIT@CS@PhoI{+49 721 608}
\let\KIT@CS@FaxI=\KIT@CS@PhoI
\gdef\CS{%
  \let\KIT@Str=\KIT@CS@Str
  \let\KIT@Ort=\KIT@CS@Ort
  \let\KIT@PhoI=\KIT@CS@PhoI
  \let\KIT@FaxI=\KIT@CS@FaxI
  }
\gdef\KIT@CN@Str{Herman-von-Helmholtz-Platz 1}
\gdef\KIT@CN@Ort{76344 Eggenstein-Leopoldshafen}
\gdef\KIT@CN@PhoI{+49 7247 82}
\let\KIT@CN@FaxI=\KIT@CN@PhoI
\gdef\CN{%
  \let\KIT@Str=\KIT@CN@Str
  \let\KIT@Ort=\KIT@CN@Ort
  \let\KIT@PhoI=\KIT@CN@PhoI
  \let\KIT@FaxI=\KIT@CN@FaxI
  }
\let\KIT@PhoI=\relax
\newcommand{\PhoneInst}[1]{\gdef\KIT@PhoI{{#1}}}
\let\TelInst=\PhoneInst
\let\KIT@FaxI=\relax
\newcommand{\FaxInst}[1]{\gdef\KIT@FaxI{{#1}}}
\let\KIT@InstI=\relax
\newcommand{\Institution}[1]{\long\def\KIT@InstI{#1}}
\let\Einrichtung=\Institution
\let\KIT@IHd=\relax
\newcommand{\Head}[1]{\gdef\KIT@IHd{#1}}
\let\Leiter=\Head
\let\KIT@IHdTxt=\relax
\let\KIT@InstII=\relax
\newcommand{\Department}[1]{\gdef\KIT@InstII{{#1}}}
\let\Abteilung=\Department
\let\KIT@Geb=\relax
\newcommand{\Building}[1]{\gdef\KIT@Geb{{#1}}}
\let\Geb=\Building
\newif{\ifKIT@LA@}\KIT@LA@false
\newcommand{\DeliverAddr}{\KIT@LA@true}
\let\Lieferanschrift=\DeliverAddr
\let\KIT@Oic=\relax
\newcommand{\Official}[1]{\gdef\KIT@Oic{{#1}}}
\let\Bearbeiter=\Official
\let\KIT@OicTxt=\relax
\let\KIT@PhoD=\relax
\newcommand{\PhoneDirect}[1]{\gdef\KIT@PhoD{{#1}}}
\let\TelDurchwahl=\PhoneDirect
\let\KIT@Pho=\relax
\newcommand{\Phone}[1]{\gdef\KIT@Pho{{#1}}}
\let\Telefon=\Phone
\let\KIT@PhoTxt=\relax
\let\KIT@FaxD=\relax
\newcommand{\FaxDirect}[1]{\gdef\KIT@FaxD{{#1}}}
\let\FaxDurchwahl=\FaxDirect
\let\KIT@Fax=\relax
\newcommand{\Fax}[1]{\gdef\KIT@Fax{{#1}}}
\let\KIT@FaxTxt=\relax
\gdef\KIT@IHdTxtD{Leiter/in}
\gdef\KIT@IHdTxtE{Head}
\gdef\KIT@OicTxtD{Bearbeiter/in}
\gdef\KIT@OicTxtE{Official in charge}
\gdef\KIT@PagTxtD{Anzahl Seiten}
\gdef\KIT@PagTxtE{Number of pages}
\gdef\KIT@PhoTxtD{Telefon}
\gdef\KIT@PhoTxtE{Phone}
\gdef\KIT@FaxTxtD{Fax}
\gdef\KIT@FaxTxtE{Fax}
\gdef\KIT@EmlTxtD{E-Mail}
\gdef\KIT@EmlTxtE{Email}
\gdef\KIT@DatTxtD{Datum}
\gdef\KIT@DatTxtE{Date}
\gdef\KIT@RefTxtD{Unser Zeichen}
\gdef\KIT@RefTxtE{Our Reference}
\gdef\KIT@LieferAnschrTxt{Lieferanschrift}
\gdef\KIT@GebTxt{Geb.}
\gdef\German{%
  \KIT@Detrue
  \KIT@internatfalse
  \let\KIT@PagTxt=\KIT@PagTxtD
  \let\KIT@IHdTxt=\KIT@IHdTxtD
  \let\KIT@OicTxt=\KIT@OicTxtD
  \let\KIT@PhoTxt=\KIT@PhoTxtD
  \let\KIT@FaxTxt=\KIT@FaxTxtD
  \let\KIT@EmlTxt=\KIT@EmlTxtD
  \let\KIT@RefTxt=\KIT@RefTxtD
  \let\KIT@DatTxt=\KIT@DatTxtD
  \KIT@German
  \renewcommand{\enclname}{Anlagen(n)}
  \renewcommand{\ccname}{Verteiler}
  \renewcommand{\psname}{PS}
  \let\KIT@logo=\KIT@logo@bwD
}
\let\Deutsch=\German
\gdef\English{%
  \KIT@Defalse
  \KIT@internattrue
  \let\KIT@PagTxt=\KIT@PagTxtE
  \let\KIT@IHdTxt=\KIT@IHdTxtE
  \let\KIT@OicTxt=\KIT@OicTxtE
  \let\KIT@PhoTxt=\KIT@PhoTxtE
  \let\KIT@FaxTxt=\KIT@FaxTxtE
  \let\KIT@EmlTxt=\KIT@EmlTxtE
  \let\KIT@RefTxt=\KIT@RefTxtE
  \let\KIT@DatTxt=\KIT@DatTxtE
  \KIT@English
  \renewcommand{\enclname}{encl}
  \renewcommand{\ccname}{cc}
  \renewcommand{\psname}{P.S.{}}
  \let\KIT@logo=\KIT@logo@bwE
}
\let\Englisch=\English
\newif\ifKIT@internat\KIT@internatfalse
\newcommand{\International}{\KIT@internattrue}
\newcommand{\InternationalD}{\let\KIT@Cntry=\KIT@CntryD\KIT@internattrue}
\newcommand{\InternationalE}{\let\KIT@Cntry=\KIT@CntryE\KIT@internattrue}
\newcommand{\National}{\KIT@internatfalse}
\newcommand{\FaxTo}[1]{\gdef\KIT@FaxNum{#1}}
\let\FaxAn=\FaxTo
\let\KIT@FaxNum=\relax
\gdef\KIT@xtrpgs{0}
\newcommand{\ExtraPages}[1]{\gdef\KIT@xtrpgs{#1}}
\let\ExtraSeiten=\ExtraPages
\let\NumPages=\ExtraPages
\paperwidth=210mm
\paperheight=297mm
\newlength{\KIT@tmplen}
\newcommand{\KIT@Kopf}{%
  \gdef\KIT@vsp{\rule{0pt}{\KIT@vsk}}%
  \vspace*{9.2mm}%
  \begin{tikzpicture}
    \useasboundingbox (20mm,280.9mm) rectangle (20mm,280.9mm);
      \KIT@MFrameRA
      \pgftext[at=\pgfpoint{20mm}{281mm},left,top]
        {\includegraphics[width=40.2mm]{\KIT@logo}}
    \pgftext[at=\pgfpoint{20mm}{6mm},left,base]
      {\fontsize{8pt}{10pt}\selectfont\raggedright\KIT@Text}
    \pgftext[at=\pgfpoint{198mm}{6mm},right,base]
      {\fontsize{15pt}{18pt}\bfseries\color{KITfoot}\KIT@Web}
    \pgftext[at=\pgfpoint{130mm}{272.5mm},left,top]{\usebox{\KIT@box}}
    \pgftext[at=\pgfpoint{20mm}{240mm},left,top]
      {{\fontsize{18pt}{20pt}\bfseries FAX}}
    \pgftext[at=\pgfpoint{20mm}{230.8mm},left,bottom]
      {{\fontsize{7pt}{10pt}\bfseries\KIT@PagTxt:
       \setcounter{KIT@ctr}{\getpagerefnumber{\KIT@pages}}
       \refused{\KIT@pages}
       \addtocounter{KIT@ctr}{\KIT@xtrpgs}
       \theKIT@ctr
      }}
    \pgftext[at=\pgfpoint{20mm}{223.8mm},left,top]
      {\parbox{85mm}{\fontsize{9pt}{11pt}\raggedright
          \@addresslist\\[4mm]
          \textbf{\KIT@FaxTxt\ \KIT@FaxNum}}}
  \end{tikzpicture}%
}
\AtBeginDocument{%
  \addtolength{\oddsidemargin}{2.5mm}
  \addtolength{\evensidemargin}{2.5mm}
  \if\KIT@InstI\relax%
    \InputIfFileExists{inst.tex}{}{}
    \if\KIT@InstI\relax
      \message{Eine Einrichtung/Institution muss angegeben werden mit einem der  folgenden Befehle - an institution must be specified using one of the following commands: \string\Einrichtung\{...\} oder/or \string\Institution\{...\}}
    \fi
  \fi
  \address{\KIT@Kopf}
  \pagestyle{KIT}
  \@reflinefalse
  \let\KIT@db@open=\opening
  \gdef\opening{%
    \enlargethispage{23mm}%
    \KIT@db@open
  }
}
\gdef\ka@db@placetoaddress{\vspace*{\KIT@AddrHt}}
\DateText
\German
\AtBeginDocument{\BW}
\endinput
%%
%% End of file `KITfax.cls'.
