\version "2.22.0"
\language "deutsch"

flatTrill = \markup { \concat{ \musicglyph #"scripts.trill" \hspace #.3 \super \flat}}

oboeIPhraseI = \relative c'' {
  |
  r2 cis8\f( h a gis
  fis gis a h cis d e fis
  e fis gis a) h4^^ e,->
  R1
  r4 e\mf^^ r2

  | %\barNumberCheck #6
  r4 cis-. h-. fis-.
  r cis'^^ r2
  r4 a-. fis-. e-.
  r cis'^^ r2
  r4 d,-. f-. a-.
  r gis8-. 8-. cis4-. r

  | %\barNumberCheck #12
  h8-. 8-. gis4-. 4-. e-.
  d-. r r2
  r4 h'\fz^^ r2
  r4 fis'-. r cis-.
  r cis-. r gis-.
  e-. r r2

  | %\barNumberCheck #18
  r4 h'\fz^^ r2
  r4 fis'-. r cis-.
  r a-. r gis-.
  R1
}

oboeI = \relative c' {
  \transposition c'
  \key a \major

  \oboeIPhraseI
  d4( e fis gis
  a1~

  \barNumberCheck #24
  4) fis( gis a
  h1~
  4) gis( fis gis
  fis1
  gis2) r
  r4 cis\fz^^ r2

  \barNumberCheck #30
  \repeat unfold 2 {
    R1
    r4 cis\fz^^ r2
  }
  r2 h8\mf( cis d e
  fis) r r4 h,8 r r4

  \barNumberCheck #36
  e,8 r r4 r2
  R1
  r4 a'!\fz^^ r2
  R1
  r4 ais,\fz^^ r2
  r4 d\fz^^ r2

  \barNumberCheck #42
  r2 d,8( e fis gis
  a) r r4 r2
  r4 d2->( cis4-.)
  h8-> r r4 r2
  R1
  r4 cis\fz-> r ais->

  \barNumberCheck #48
  r2 fis\mf(
  h2.) gis4~
  4 fis( e2)
  R1
  r2 gis-\tweak X-offset #-3 \mp\>
  R1*14\!

  \barNumberCheck #67
  R1*6
  e'1\mf-\tweak to-barline ##f \<~
  1-\tweak self-alignment-X #-4 \f

  \barNumberCheck #75
  \oboeIPhraseI

  \barNumberCheck #96
  d,4( e fis gis
  a1~
  4) fis gis a
  h1~

  \barNumberCheck #100
  4 gis( fis gis
  fis1~
  2) r


}

oboeI-PtII = \relative c'' {
  \transposition c'
  \key b \major

  \repeat unfold 2 {
    r4 d\fz^^ r2
    R1
  }
  r4 d\fz^^ r2
  r c8\mf( d es f
  g) r r4 c,8 r r4

  \barNumberCheck #110
  f,8 r r4 r2
  R1
  r4 b'\fz^^ r2
  R1
  r4 h,\fz^^ r2

  \barNumberCheck #115
  r4 es\fz^^ r2
  r es,8( f g a
  b) r r4 r2
  r4 es2->( d4-.)
  c8-> r r4 r2

  \barNumberCheck #120
  R1
  r4 d\fz-> r h->
  r2 g\mf(
  c2.) a4~
  4 g( f2)
  R1

  \barNumberCheck #126
  r2 es'->\fermata\glissando(
  c'1)
  e,4^^ 4^^ dis8->( e4.)
  r2 b8( c d! es!
  c d es f es-.) r r4

  \barNumberCheck #131
  b1\mf~
  1~
  1~
  2 r
  b1\f-\tweak bound-details.left.text \flatTrill \startTrillSpan~
  1~
  1\stopTrillSpan\<
  b4\fz-> r r2

}