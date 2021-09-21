\version "2.22.0"

\paper {
      indent = 0\mm
      ragged-last-bottom = ##f
      top-system-spacing = #'((minimum-distance . 15))
      last-bottom-spacing = #'((minimum-distance . 15))
      #(set-paper-size "a4")
      print-all-headers = ##t
      bookTitleMarkup = ##f
      
      scoreTitleMarkup = \markup {
        \column {
          \fill-line { \center-align { \fontsize #3 \bold "There's No Business Like Show Business" }}
          \fill-line {
            \fontsize #1 \fromproperty #'header:instrument
            { \concat {"from the musical " \bold "“Annie Get Your Gun”" }}
            \right-column { "Irving Berlin" "Arr. Jack Everly" }
          }
        }
      }
      oddHeaderMarkup = \markup { \fill-line {
        \null
        { \on-the-fly #not-first-page \fromproperty #'header:instrument }
        { \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string }
      }}
      evenHeaderMarkup = \markup { \fill-line {
        { \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string }
        { \fromproperty #'header:instrument }
        \null
      }}
    }