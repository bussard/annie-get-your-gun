\version "2.22.0"

\layout {
  \context {
    \Score
    markFormatter = #format-mark-box-barnumbers
    \override MultiMeasureRest.expand-limit = #1
  }
  \context {
    \Staff
  }
}