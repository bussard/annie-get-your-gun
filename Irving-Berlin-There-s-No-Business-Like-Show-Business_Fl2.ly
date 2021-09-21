\version "2.22.0"
\language "deutsch"
\pointAndClickOff

\include "parts/Fl2.ily"
\include "common/paper.ily"
\include "common/layout.ily"
\include "common/header.ily"
\include "common/structure.ily"
\header {
  instrument = "Flute II"
}

\score {
  \new Staff = "fluteIIStaff" <<
    \new NullVoice { \structure }
    \new Voice = "fluteIIVoice" {
      \compressEmptyMeasures
      \transpose a' b' \fluteII
      \transpose b' h' \fluteII-PtII
    }
  >>
}






