\version "2.22.0"
\language "deutsch"
\pointAndClickOff

\include "parts/Fl3.ily"
\include "common/paper.ily"
\include "common/layout.ily"
\include "common/header.ily"
\include "common/structure.ily"
\header {
  instrument = \markup {\column {"Flute III" "Piccolo"}}
}

\score {
  \new Staff = "fluteIIIStaff" <<
    \new NullVoice { \structure }
    \new Voice = "fluteIIIVoice" {
      \compressEmptyMeasures
      \transpose a' b' \fluteIII
      \transpose b' h' \fluteIII-PtII
    }
  >>
}






