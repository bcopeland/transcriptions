\version "2.18.2"
#(set-global-staff-size 18)
\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"
\include "common.ily"

\paper {
  #(set-paper-size "letter")
%  paper-height = 11\in
%  paper-width = 8.5\in
  indent = 0\mm
  between-system-space = 2.5\cm
  between-system-padding = #0
  %%set to ##t if your score is less than one page:
  ragged-last-bottom = ##t
  ragged-bottom = ##f
  markup-system-spacing = #'((basic-distance . 23)
                             (minimum-distance . 8)
                             (padding . 1))
}

title = #"West Coast Blues"
composer = #"Wynton Kelly Solo"
meter = #" 160"

realBookTitle = \markup {
  \score {
    {
      \override TextScript.extra-offset = #'(0 . -4.5)
      s4
      s^\markup {
        \fill-line {
          \fontsize #1 \lower #1 \rotate #7 \concat { " " #meter }
          \fontsize #8
            \override #'(offset . 7)
            \override #'(thickness . 6)
            \underline \larger \larger #title
          \fontsize #1 \lower #1 \concat { #composer " " }
        }
      }
      s
    }
    \layout {
      \omit Staff.Clef
      \omit Staff.TimeSignature
      \omit Staff.KeySignature
      ragged-right = ##f
    }
  }
}

\header {
  title = \realBookTitle
  tagline = ##f
}

theNotes = \relative c' {
  \set Staff.midiInstrument = "flute"
  \key bes \major
  \time 3/4

  \section
  \sectionLabel "solo"

  r8 f aes f aes f |
  bes4 c bes |
  r4 r8 ees, ges aes |
  bes c d ees f4 | \break

  r8 f, \tuplet 3/2 { des' d f } des16 d des bes |
  c8 bes f ees \appoggiatura des16 d4 |
  bes4. b8 des d ~ |
  d e f aes c des | \break

  c16 des b a bes8 g aes16 bes des f ~ |
  f2. |
  r2. | r2.| \break

  r2. | r2.| r2. r2. | \break
  r2. | r2.| r2. r2. | \break
  r2. | r2.| r2. r2. | \break
}

theChords = \chordmode {
    \time 3/4
    \set chordChanges = ##t

    bes:7 | bes:7 | aes:7 | aes:7 |
    bes:7 | bes:7 | b:m7 | e:7 |
    ees:7 | ees:7 | ees:m7 | aes:7 |
    d:m7 | g:7 | des:m7 | ges:7 |
    c:7 | c:7 | c:m7 | f:7 |
    bes:maj6 | des:m7 | ges:7 | f:7
}

\score {
  <<
    \new ChordNames \tpose \theChords
    \new Voice = soloist \tpose \theNotes
  >>
  \layout {
    \override Score.Clef. #'break-visibility = #'#(#f #f #f)  % make only the first clef visible
    \override Score.KeySignature. #'break-visibility = #'#(#f #f #f)  % make only the first time signature visible
    \override Score.SystemStartBar. #'collapse-height = #1  % allow single-staff system bars
  }
  \midi {
    \tempo 4 = 120
  }
}
