\version "2.22.0"

flatTrill = \markup { \concat {\musicglyph #"scripts.trill" \hspace #.4 \super \flat} }
fluteI = \relative c'' {
  \transposition c'
  \key a \major

  r2 cis8\f( h a gis
  fis gis a h cis d e fis
  e fis gis a) h4^^ e->
  R1
  r4 a,\mf^^ r2

  \barNumberCheck #6
  r4 e-. cis-. a-.
  r e'^^ r2
  r4 cis-. a-. e-.
  r e'^^ r2
  r4 a,-. h-. d-.

  \barNumberCheck #11
  r e8-. e-. h'4-. r
  a8-. a-. e4-. cis-. a-.
  gis-. r r2
  r4 e'\fz^^ r2
  r4 a-. r e-.

  \barNumberCheck #16
  r4 e-. r a,-.
  gis-. r r2
  r4 e'\fz^^ r2
  r4 a-. r e-.
  r e-. r a,-.

  \barNumberCheck #21
  R1*2
  r4 a\mf\glissando( a'2~
  4) fis( gis a
  h1~
  4) r r2
  R1*2

  \barNumberCheck #29
  r4 a\fz^^ r2
  R1
  r4 gis\fz^^ r2
  R1
  r4 g\fz^^ r2

  \barNumberCheck #34
  r2 h,8\mf( cis d e
  fis e d cis h a gis fis
  e d cis) r r2
  R1
  r4 h''\fz^^ r2

  \barNumberCheck #39
  R1
  r4 e,\fz^^ r2
  r4 a\fz^^ r2
  r d,8( e fis gis
  e) r r4 r2

  \barNumberCheck #44
  r4 ais2-> 4-.
  fis8-> r r4 r2
  R1
  r4 cis'\fz-> r ais->
  r2 fis2\mf(

  \barNumberCheck #49
  h,2.) gis4~
  4 fis( e2)
  R1
  r2 gis-\tweak X-offset #-4 \mp\>
  R1*8\!

  \barNumberCheck #61
  g1\mp(
  fis
  f
  e)
  R1*2
  R1*2

  \barNumberCheck #69
  gis1\mp(
  ais\cresc
  cis
  dis)
  h'\mf-\tweak to-barline #f \<~
  1-\tweak self-alignment-X #-5 \f

  \barNumberCheck #75
  r2 cis,8\f( h a gis
  fis gis a h cis dis e fis
  e fis gis a) h4^^ e->
  R1
  r4 a,\mf^^ r2

  \barNumberCheck #80
  r4 e-. cis-. a-.
  r e'^^ r2
  r4 cis-. a-. e-.
  r e'^^ r2
  r4 a,-. h-. e-.
  r e8-. e-. h'4-. r

  \barNumberCheck #86
  a8-. a-. e4-. cis-. a-.
  gis-. r r2
  r4 e'\fz^^ r2
  r4 a-. r e-.
  r e-. r a,-.

  \barNumberCheck #91
  gis-. r r2
  r4 e'\fz^^ r2
  r4 a-. r e-.
  r e-. r a,-.
  R1*2

  \barNumberCheck #97
  r4 a\mf\glissando( a'2~
  4) fis( gis a
  h1~
  4) r r2
  R1*2
}

fluteI-PtII = \relative c''' {
  \transposition c'

  \barNumberCheck #103 \key b \major
  r4 b\fz^^ r2
  R1
  r4 a\fz^^ r2
  R1
  r4 as\fz^^ r2

  \barNumberCheck #108
  r c,8\mf( d es f
  g f es d c b a g
  f es d) r r2

  \barNumberCheck #111 \mark #111
  R1
  r4 c''\fz^^ r2
  R1

  \barNumberCheck #114
  r4 f,\fz^^ r2
  r4 b\fz^^ r2
  r es,8( f g a
  f) r r4 r2
  r4 h2-> 4-.

  \barNumberCheck #119 \mark #119
  g8-> r r4 r2

  R1
  r4 d'\fz-> r h->
  r2 g\mf(
  c,2.) a4~
  4 g( f2)
  R1

  \barNumberCheck #126
  r2 es'->\fermata\glissando(
  c'1)
  b4^^ 4^^ a8->( b4.)
  r2 b,8( c d es
  c d es f es f g a

  \barNumberCheck #131 \mark #131
  b1\mf~
  1~
  1~
  2) r

  b1\f-\tweak bound-details.left.text \flatTrill \startTrillSpan~
  1~
  1\<\stopTrillSpan
  4\fz-> r r2
}