\version "2.22.0"

\include "./Fl1.ily"
\addQuote "flI" { \transpose a' b' {\fluteI \fluteI-PtII} }

fluteIII = \relative c'' {
  \transposition c'

  <>^\markup{\box \bold "Flute"}
  \quoteDuring "flI" s1*9

  \barNumberCheck #10
  r4 d,-. f-. a-.
  r h8-. 8-. e4-. r
  cis8-. 8-. h4-. gis-. e-.
  d-. r r2

  \barNumberCheck #14
  \quoteDuring "flI" s1*9

  \barNumberCheck #23
  r4 cis\mf\glissando( cis'2~
  4))) fis,( gis a
  h1~
  4) r^"to Picc." r2

  \barNumberCheck #27
  \quoteDuring "flI" s1*2
  <>-\tweak X-offset #2 ^\markup{ \box \bold "Picc."}
  \quoteDuring "flI" s1*5
  R1*4
  r4 d\fz^^ r2
  R1
  r4 g\fz^^ r2
  r4 h,\fz^^ r2
  r d8( e fis gis

  \barNumberCheck #43
  a) r r4 r2
  r4 d,2->( cis4-.)
  h8-> r r4 r2
  R1
  r4 cis\fz-> r ais->

  \barNumberCheck #48
  <>^"to Flute"
  R1*5

  \barNumberCheck #53
  \quoteDuring "flI" s1*16

  \barNumberCheck #69
  <>^\markup {\box \bold "Flute"}
  cis,1\mp( ~
  1\cresc
  fis
  gis)
  e'\mf-\tweak to-barline ##f \<~
  1-\tweak self-alignment-X #-4 \f

  \barNumberCheck #75
  \quoteDuring "flI" s1*9

  \barNumberCheck #84
  r4 d,-. f-. a-.
  r h8-. 8-. e4-. r
  cis8-. 8-. h4-. gis-. e-.
  d-. r r2

  \barNumberCheck #88
  \quoteDuring "flI" s1*9

  \barNumberCheck #97
  r4 cis\mf\glissando( cis'2~
  4) fis,( gis a
  h1~
  4) r^"to Picc." r2
  R1*2
}

fluteIII-PtII = \relative c'' {
   \transposition c'
   \key b \major
    <>^\markup{\box \bold "Picc."}

   \quoteDuring "flI" s1*9

   \barNumberCheck #112
   r4 es\fz^^ r2
   R1
   r4 as\fz^^ r2
   r4 c,\fz^^ r2

   \barNumberCheck #116
   r2 es8( f g a
   b) r r4 r2
   r4 es,2->( d4-.)
   \mark #119 c8-> r r4 r2
   R1
   r4 d\fz-> r h->

   \barNumberCheck #122
   R1*3
   R1
   r2 r\fermata
   R1
   b4^^ 4^^ a8->( b4.)
   R1

   \barNumberCheck #130
   r2 es8( f g a

   b1\mf~
   1~
   1~
   2) r
   \quoteDuring "flI" s1*4
}