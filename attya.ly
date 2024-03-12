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

title = #"All the Things You are"
composer = #"?"
meter = #" 200"

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

theNotes = \relative c'' {
  \set Staff.midiInstrument = "flute"
  \key aes \major

  aes1 |
  des2. aes4 |
  g4 g g g |
  g8 c~ c2 g4 | \break

  f4 f f f |
  f4. b8 ~ b4 f8 e ~ |
  e1 |
  r1 | \break

  ees1 |
  aes2. ees4 |
  d d d d |
  d8 g~ g2 d4 |

  c4 c c c |
  c d8 ees d c ~ c4|
  b1 |
  r4 d g d' | \break

  d c8 c8~ c2 |
  r4 des, d c' |
  b1 |
  r4 d, g b | \break

  b a8 a8~ a2 |
  r4 bes, b a' |
  gis1 |
  r1 | \break

  aes1 |
  des2. aes4 |
  g4 g g g |
  g8 c~ c2 g4 | \break

  f1 |
  ees'2 d2 |
  ees,4 ees ees8 ees8 ees4  |
  g2. f4 | \break

  des4 des f aes |
  f'2 g,2 |
  aes1 |
  r1 |
}

theChords = \chordmode {
    \set chordChanges = ##t

    f1:m7 |
    bes:m7 |
    ees:7 |
    aes:maj7 | \break

    des:maj7 |
    d2:m7 g:7 |
    c1:maj7 |
    c:maj7 | \break

    c:m7 |
    f:m7 |
    bes:7 |
    ees:maj7 | \break

    aes:maj7 |
    a2:m7 d2:m7 |
    g1:maj7 |
    g1:maj7 | \break

    a1:m7 |
    d1:7 |
    g1:maj7 |
    g1:maj7 | \break

    fis1:m7 |
    b1:7 |
    e1:maj7 |
    c:7.9+ | \break

    f1:m7 |
    bes1:m7 |
    ees1:7 |
    aes1:maj7 | \break

    des1:maj7 |
    des1:m7 |
    c:m7 |
    b:dim7 | \break

    bes1:m7 |
    ees1:7 |
    aes:maj7 |
    g2:m7 c2:m7 |
}

\score {
  <<
    \new ChordNames \tpose \theChords
    \new Voice = soloist \tpose \theNotes
  >>
  \layout {
    \override Score.Clef #'break-visibility = #'#(#f #f #f)  % make only the first clef visible
    \override Score.KeySignature #'break-visibility = #'#(#f #f #f)  % make only the first time signature visible
    \override Score.SystemStartBar #'collapse-height = #1  % allow single-staff system bars
  }
  \midi {
    \tempo 4 = 200
  }
}
