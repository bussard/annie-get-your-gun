\version "2.22.0"
\language "deutsch"
\pointAndClickOff

\include "parts/Ob1.ily"
\include "common/paper.ily"
\include "common/layout.ily"
\include "common/header.ily"
\include "common/structure.ily"
\header {
  instrument = \markup {\column {"Oboe I"}}
}

\score {
  \new Staff = "oboeIStaff" <<
    \new NullVoice { \structure }
    \new Voice = "oboeIVoice" {
      \compressEmptyMeasures
      \transpose a' b' \oboeI
      \transpose b' h' \oboeI-PtII
    }
  >>
}






