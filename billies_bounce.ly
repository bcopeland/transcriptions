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

title = #"Billie's Bounce"
composer = #"Charlie Parker"
meter = #" Med. Swing"

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

    % head
    r2 r4 r8 c8 |
    b c f aes a f d f ~ |
    f8 d f4 r8 f ~ f8 d |
    f4 r8 f8 ~ f8 d f4 | \break

    aes8 a f d f g f8 f |
    r4 r8 a bes f r8 aes |
    r8 bes r4 ees8 c f ees ~ |
    ees8 f c4 r4 r8 e8 ~ | \break

    e4 g,8 e fis ees' c cis |
    d4 r8 g fis d bes g |
    f'4 r8 f e e d d |
    c4 r8 f,8 ~ f8 d f4 | \break
    r8 f8 ~ f8 d f4 r8 c8 |

    % 1st chorus
    f4 g8 gis a4 bes8 b |
    c4 \tuplet 3/2 { bes8 c bes } a f d c |
    g'16 a g f ees8 f ~ f2 |
    r2 r4 r8 f'8 ~ | \break

    f8 c16 bes aes4 g8 f ees8 d |
    c4 bes8 f aes a bes b |
    \tuplet 3/2 { c8 d c } a c e d~ d4 |
    r1 | \break

    r4. \tuplet 3/2 {g16 b d} f8 e d \tuplet 3/2 {cis16 b c ~} |
    c8 a bes bes a f d c |
    g'8 f g a ~ a4 r4 |
    r1 | \break

    r8 f aes bes b4 b8 b |
    bes8 aes f bes8 ~ bes b bes4 ~ |
    bes4 r8 f aes a bes b |
    \tuplet 3/2 { c16 d c } a8 f ees ~ ees4 r8 g | \break

    \tuplet 3/2 { f16 g f } d8 bes f aes4 r4 |
    r2 c'4 f8 c |
    \tuplet 3/2 { bes8 c bes } a bes c a ~ a4 |
    r1 | \break

    r4 fis16 g bes d f d dis e c cis d c |
    bes16 a g f  e f bes des \tuplet 3/2 { c bes a } c bes a f d c |
    f4 r8 d16( ees16 d8) c8~ c4 |
    r4. c8 f a c f ~ | \break

    f4 ees8 d16 c16 bes8 a g ges |
    f ees \tuplet 3/2 {d f a} c bes d, bes' |
    \tuplet 3/2 { a16 bes a16 } f8 d c \tuplet 3/2 { g'16 a g } f8 ees f |
    d8 f d c ~ c4 r4 | \break

    r2 r4 r8 aes''8 ~ |
    \tuplet 3/2 {aes4 g f} ees8 c bes f |
    a4. c8 r4 r8 bes |
    \tuplet 3/2 {a16 bes a} g8 fis a c ees d a | \break

    c bes~ bes4 r4 r8 c16 b |
    bes8 a g f \tuplet 3/2 { e g bes } des16 ees c8 ~ |
    c8 bes16 c a2 r4 |
    r8 g8 ~ g2. |

}

theChords = \chordmode {
    \set chordChanges = ##t
    f1:7 |

    f1:7 | bes1:7 | f1:7 | f1:7 |
    bes1:7 | bes1:7 | f1:7 | a2:m7 d2:7 |
    g1:m7 | c1:7 | f1:7 | g2:m7 c2:7 |

    f1:7 | bes1:7 | f1:7 | f1:7 |
    bes1:7 | bes1:7 | f1:7 | a2:m7 d2:7 |
    g1:m7 | c1:7 | f1:7 | g2:m7 c2:7 |

    f1:7 | bes1:7 | f1:7 | f1:7 |
    bes1:7 | bes1:7 | f1:7 | a2:m7 d2:7 |
    g1:m7 | c1:7 | f1:7 | g2:m7 c2:7 |

    f1:7 | bes1:7 | f1:7 | f1:7 |
    bes1:7 | bes1:7 | f1:7 | a2:m7 d2:7 |
    g1:m7 | c1:7 | f1:7 | g2:m7 c2:7 |
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
    \tempo 4 = 200
  }
}
