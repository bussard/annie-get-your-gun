\version "2.22.0"
\language "deutsch"

treble = \relative c''' {
  \time 2/2
  \key a \major
  <>^"A scale"
  r4 s r2
  R1*2
  r4 <>^"Solo"
  <e, e,>2.->

  \bar "||"
  \mark #5
  \barNumberCheck #5
  r4 <h cis e a>-^ r2
  R1

  \barNumberCheck #7
  r4 <gis h cis e>-^ r2
  R1
  r4 <gis a cis e>-^ r2
  R1
  r2 <h gis e cis>4^^ r
  a e cis a

  \barNumberCheck #13
  R1*2
  s1
  R1*3
  s1
  R1
}

bass = \relative c, \context Voice="first" {
  \clef bass
  \key a \major
  e4\glissando << \context Voice="first" { \change Staff="treble" e''''}
                  \context Voice="second" { \tweak staff-position #0 r4 } >> \change Staff="bass"  r2
  R1*11

  \barNumberCheck #13
  gis,,,2 e
  h e,
  a\glissando \change Staff="treble" a''' \change Staff="bass"
  R1*3
  a,,,2\glissando \change Staff="treble" a''' \change Staff="bass"
  R1
}

dyn = {
  s4\ff s2.
  s1*2
  s4 s\fz s s
  \barNumberCheck #5
  s s\mf s s
  s1*14
  <>^\markup {\center-column { \concat{"G" \super \flat}
                               \concat {"D" \super \flat } }}
}

\score {
    \new GrandStaff <<
      \new Staff = "treble" {
         \context Voice = "upper" {
             \compressMMRests
             \treble
         }
      }

      \new Dynamics {
         \dyn
      }
      \new Staff = "bass" {
         \context Voice = "lower" {
             \compressMMRests
             \bass
         }
      }
    >>
}

\layout {
  \context {
    \Score
    markFormatter = #format-mark-box-numbers
    \override MultiMeasureRest.expand-limit = #1
  }
  \context {
    \Staff
  }
}

\paper {
  indent = 0
  ragged-last-bottom = ##t
  ragged-last = ##f
  top-system-spacing = #'((minimum-distance . 10))
  last-bottom-spacing = #'((minimum-distance . 10))
}

\header {
  tagline = ##f
  title = "There's No Business Like Show Business"
  composer = "Irving Berlin"
  arranger = "Arr. Jack Everly"
}

