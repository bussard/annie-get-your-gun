\version "2.22.0"

\include "./Fl1.ily"
\addQuote "flI" { \transpose a' b' {\fluteI \fluteI-PtII} }

fluteII = \relative c'' {
  \transposition c'

  \quoteDuring "flI" s1*4
  \barNumberCheck #5
  r4 e\mf^^ r2

  r4 cis-. h-. fis-.
  r cis'^^ r2
  r4 a-. fis-. cis-.
  r cis'^^ r2
  r4 fis,-. a-. h-.

  \barNumberCheck #11
  r cis8-. 8-. gis'4-. r
  e8-. 8-. cis4-. h-. fis-.
  e-. r r2
  r4 d'\fz^^ r2
  r4 fis-. r cis-.

  \barNumberCheck #16
  r cis-. r gis-.
  e-. r r2
  r4 d'\fz^^ r2
  r4 fis-. r cis-.
  r cis-. r gis-.

  \barNumberCheck #21
  R1*2
  r4 fis\mf\glissando( fis'2~
  4) 4( gis a
  h1~
  4) r r2
  R1*2

  \barNumberCheck #29
  \repeat unfold 2 {
    r4 e,\fz^^ r2
    R1
  }
  r4 e\fz^^ r2
  \barNumberCheck #34
  \quoteDuring "flI" s1*3

  \barNumberCheck #37
  R1
  r4 fis\fz^^ r2
  R1 r4 cis\fz^^ r2
  r4 f\fz^^ r2
  r d8( e fis gis
  cis,) r r4 r2

  \barNumberCheck #44
  r4 fis2-> 4-.
  d8-> r r4 r2

  \barNumberCheck #46
  \quoteDuring "flI" s1*23

  \barNumberCheck #69
  eis,1\mp(
  fisis\cresc
  gis
  his)
  gis'\mf-\tweak to-barline ##f \<~
  1-\tweak self-alignment-X #-5 \f

  \barNumberCheck #75
  \quoteDuring "flI" s1*4

  \barNumberCheck #79
  r4 e\mf^^ r2
  r4 cis-. h-. fis-.
  r cis'-. r2
  r4 a-. fis-. cis-.
  r cis'^^ r2
  r4 fis,-. a-. h-.

  \barNumberCheck #85
  r cis8-. 8-. gis'4-. r
  e8-. 8-. cis4-. h-. fis-.
  e-. r r2
  r4 d'\fz^^ r2
  r4 fis-. r cis-.
  r cis-. r gis-.

  \barNumberCheck #91
  e-. r r2
  r4 d'\fz^^ r2
  r4 fis-. r cis-.
  r cis-. r gis-.
  R1*2

  \barNumberCheck #97
  r4 fis\mf\glissando( fis'2~
  4) 4( gis a
  h1~
  4) r r2
  R1*2
}

fluteII-PtII = \relative c'' {
   \transposition c'
   \key b \major

   r4 f!\fz^^ r2
   \repeat unfold 2 {
     R1
     r4 f\fz^^ r2
   }

   \barNumberCheck #108
   \quoteDuring "flI" s1*3

   \barNumberCheck #111
   R1
   r4 g\fz^^ r2

   \barNumberCheck #113
   R1
   r4 d\fz^^ r2
   r4 ges\fz^^ r2
   r es8( f g a
   d,) r r4 r2
   r4 g2-> 4-.

   \barNumberCheck #119
   es8-> r r4 r2

   \barNumberCheck #120
   \quoteDuring "flI" s1*8

   \barNumberCheck #128
   g4^^ 4^^ fis8->( g4.)

   \quoteDuring "flI" s1*10
}