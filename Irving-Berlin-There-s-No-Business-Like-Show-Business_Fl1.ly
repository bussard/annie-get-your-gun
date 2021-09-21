\version "2.22.0"
\language "deutsch"
\pointAndClickOff

\include "parts/Fl1.ily"
\include "common/paper.ily"
\include "common/layout.ily"
\include "common/header.ily"
\include "common/structure.ily"
\header {
  instrument = "Flute I"
}

\score {
  \new Staff = "fluteIStaff" <<
    \new NullVoice { \structure }
    \new Voice = "fluteIVoice" {
      \compressMMRests {
        \transpose a' b' \fluteI
        \transpose b' h' \fluteI-PtII
      }
    }
  >>
}






