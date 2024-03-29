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
          d cis d f4 g8 r8 c,8 | \break

          a'8 c4 a8 bes a8 \tuplet 3/2 { e f fis } |
          g8 d'8 \tuplet 3/2 {bes16 c bes16} g8 a4 cis,8 g'8 ~ |
          g8 f4 r2 a8 |
          g bes \tuplet 3/2 { a16 bes a } g8 r4 f8 bes8 ~ | \break

          bes8 bes8 \tuplet 3/2 { aes16 bes aes } f8 bes8 aes r4 |
          r8 c \tuplet 3/2 { bes16 c bes } g8 fis a d, b'8 ~ |
          b4 e8 a, r4 r8 e'16 d |
          cis8 f,8 g e r8 c'8 ~ c4 | \break

          a4 r8 f8 \tuplet 3/2 {bes a bes} g a |
          \tuplet 3/2 {f8 g ees8} r4 r8 cis4 g'8 ~ |
          g8 f4 r4. r8 a8 |
          g bes \tuplet 3/2 { a16 bes a } g8 f8 cis f8 f8 ~ | \break

          f8 aes bes f aes bes r4 |
          r8 d, g bes \tuplet 3/2 { a16 bes a } fis8 r4|
          g8 bes \tuplet 3/2 { a16 bes a } g8 c4 a8 f ~ |
          f4 r4 r8 d'8 ~ d4 | \break

          c4 r8 \tuplet 3/2 {g16 ees c } b'8 g r8 g |
          \tuplet 3/2 { bes c bes } g ees gis fis r4 |
          a8 g a g ~ g4 . g8 |
          r2. r8 bes8 | \break

          \tuplet 3/2 { des ees, bes' } \tuplet 3/2 { c bes ges ~ } ges8 aes f e |
          ees8 aes aes4 aes8 aes r8 ges |
          \tuplet 3/2 { f8 aes c } ees c des bes r4 |
          r8 g des f aes f des c | \break

          r8 c' ~ c4 bes8 a \tuplet 3/2 { e f fis } |
          g8 d'8 \tuplet 3/2 {bes16 c bes} g8 a4 cis,8 g'8 ~ |
          g8 f4 r2 a8 |
          g bes \tuplet 3/2 { a16 bes a } g8 r4 f8 bes8 ~ | \break

          bes8 bes8 \tuplet 3/2 { aes16 bes aes } f8 bes8 aes r4 |
          r8 c \tuplet 3/2 { bes16 c bes } aes8 a4 d,8 f ~ |
          f8 d8 f a ~ a f ~ f4 |
          f4 r4 b,4 e8 g | \break

% solo

          f8 ees d4 c8 bes a a' |
          bes4 e,8 d des bes' g aes |
          a f d r8 r2 |
          r8 ees \tuplet 3/2 { g8 bes d } f8 ees d c | \break

          bes8 \tuplet 3/2 { c16 bes aes ~ } aes8 f g8 f r4 |
          r8 a16 g fis8 r8 c ees c des |
          d c \tuplet 3/2 { b d f } a f d bes |
          f'4 g8 aes4 \tuplet 3/2 { e16 d c } r8 g'8 ~ | \break

          \tuplet 3/2 { g8 e f } \tuplet 3/2 { d e c ~ } c4 r4 |
          r8 e16 f \tuplet 3/2 { g8 f e } \tuplet 3/2 { d b d } \tuplet 3/2 { b cis g'16 a } |
          bes16 a g f e d cis d e cis d e f16 g a bes |
          c16 bes a g f e ees8 r2 | \break

          r4. d8 ~ \tuplet 3/2 { d8 f a } c a |
          \tuplet 3/2 { bes c bes} a8 g fis ees c cis |
          d bes g a c a' r8 f |
          \tuplet 3/2 { g16 a g } f8 cis bes c bes r8 c' | \break

          d c d c r4 r8 \tuplet 3/2 { d16 c bes } |
          g8 ees c bes r8 fis' ees e |
          f ees \tuplet 3/2 {d a' bes} c bes a bes |
          d8 f ~ f2 r4 | \break

          r4 r8 c16 ees des8 c bes ges |
          ees8 bes des bes c f r4 |
          \tuplet 3/2 { aes16 bes aes } f8 c aes bes4 r4 |
          r8 g' ~ \tuplet 3/2 { g bes d } f4 e8 c | \break

          r4 r8 bes a f d c |
          \tuplet 3/2 { fis g fis } e d cis bes' g aes |
          a c, d ees r2 |
          r4 r8 f'8 ~ f4 aes,8 f | \break

          g f des bes c bes a g |
          fis a c ees d bes g a |
          c a f' g \tuplet 3/2 { a bes b } c bes |
          a4 r8 c, e g ~ \tuplet 3/2 { g c, e } |
          f c4 r8 r2 |

}

theChords = \chordmode {
    \set chordChanges = ##t

    f1:maj7 |
    f1:maj7 | bes1:m7 | a2:m7 aes2:m7 | g2:m7 c2:7 |

    f1:maj7 | e2:m7.5- a2:7 | d2:m7 g2:7 | c2:m7 f:7 |
    bes1:7 | a2:m7 d:7 | g1:7 | c:7 |

    f1:maj7 | e2:m7.5- a2:7 | d2:m7 g2:7 | c2:m7 f:7 |
    bes1:7 | a2:m7 d:7 | g2:m7 c:7 | f1:maj7 |

    c1:m7 | f:7 | bes:maj7 | bes:maj7 |
    ees:m7 | aes:7 | des:maj7 | g2:min7 c:7 |

    f1:maj7 | e2:m7.5- a2:7 | d2:m7 g2:7 | c2:m7 f:7 |
    bes1:7 | a2:m7 d:7 | g2:m7 c:7 | f1:maj7 |

% solo

    f1:maj7 | e2:m7.5- a2:7 | d2:m7 g2:7 | c2:m7 f:7 |
    bes1:7 | a2:m7 d:7 | g1:7 | c:7 |

    f1:maj7 | e2:m7.5- a2:7 | d2:m7 g2:7 | c2:m7 f:7 |
    bes1:7 | a2:m7 d:7 | g2:m7 c:7 | f1:maj7 |

    c1:m7 | f:7 | bes:maj7 | bes:maj7 |
    ees:m7 | aes:7 | des:maj7 | g2:min7 c:7 |

    f1:maj7 | e2:m7.5- a2:7 | d2:m7 g2:7 | c2:m7 f:7 |
    bes1:7 | a2:m7 d:7 | g2:m7 c:7 | f1:maj7 |

    f1:maj7
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
