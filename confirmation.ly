\version "2.18.2"
#(set-global-staff-size 18)
\include "jazzchords.ily"
\include "lilyjazz.ily"
\include "jazzextras.ily"

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

title = #"Confirmation"
composer = #"-Charlie Parker"
meter = #" (Med. Swing)"

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
  \key f \major
          r2 r8 c8 d e |
          g f e f g ais cis f8 ~ f4 r4 cis8 ais g gis |
          a8 c, d g f c r8 cis |
          d cis d f4 g8 r8 f8 | \break

          a8 c4 a8 bes a8 \tuplet 3/2 { e f fis } |
          g8 d'8 a16 bes a g a4 cis,8 g'8 ~
          g8 f4 r2 a8 |
          g bes \tuplet 3/2 { a16 bes a } g8 r4 f8 bes8 ~ | \break

          bes8 bes8 \tuplet 3/2 { aes16 bes aes } f8 bes8 aes r4 |
          r8 c \tuplet 3/2 { bes16 c bes } aes8 fis a d, b'8 ~ |
          b4 e8 a, r4 r8 e'16 d |
          c8 f,8 g e r8 c'4. | \break

          a4 r8 f8 \tuplet 3/2 {a bes a} g a |
          f g ees4 r8 cis4 g'8 ~ |
          g8 f4 r8 r4 r8 a |
          g bes \tuplet 3/2 { a16 bes a } g8 f8 ees f8 f8 ~ | \break

          f8 aes bes f aes bes r4 |
          r8 e, g bes \tuplet 3/2 { a16 bes a } fis8 r4|
          g8 bes \tuplet 3/2 { a16 bes a } g8 c4 a8 f ~ |
          f4 r4 r8 c'4. | \break

          a4 r2. |


          r1 | r1 |
          r1 | r1 | r1 | r1 |
          r1 | r1 | r1 | r1 |
          r1 | r1 | r1 | r1 |
          r1 | r1 | r1 | r1 |
          r1 | r1 | r1 | r1 |
          r1 | r1 | r1 | r1 |
}

theChords = \chordmode {
    \set chordChanges = ##t

    f1:maj7 |
    f1:maj7 | bes1:m7 | a2:7 aes2:7 | g2:7 g4:m7 c:7 |

    f1:maj7 | e:dim7 | d:m7 | c2:m7 f:7 |
    bes1:7 | a2:m7 d:7 | g1:maj7 | g2:m7 c:7 |

    f1:maj7 | e:dim7 | d:m7 | c2:m7 f:7 |
    bes1:7 | a2:m7 d:7 | g1:maj7 | g2:m7 c:7 |

}

\score {
  <<
    \new ChordNames \theChords
    \new Voice = soloist \theNotes
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
