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

title = #"On the Sunny Side of the Street"
composer = #"Solo by Sonny Stitt"
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
  \key c \major

  e'2 c |
  e  e, |
  r8 e f g a c d c |
  e4. f16 g e4 b8 d | \break

  c8 e, g2 r8 g16 e |
  fis g a b c d e g fis e d c b a r8 |
  r4 dis16 e f fis g fis f c' e, g, a b |
  d c cis bes g ees \tuplet 3/2 { d f a }
  c a \tuplet 3/2 { d f a } g e \tuplet 3/2 { e g b } | \break

  d8. c16 b16 a g f ees e r8 r8 \tuplet 3/2 { e16 f e } |
  d16 c \tuplet 3/2 { b a ais } b4 b16 aes \tuplet 3/2 { a c d } f ees e8 |
  r8 e, a b c d e d |
  e8 e8 ~ \tuplet 3/2 { e g b } d2 | \break

  c4 e, b' a8 d, ~ |
  d4 r4 c' a8 f |
  d8 e f g e g, b c ~ |
  c4 r2. | \break

  g16 fis g a bes8 fis16 a g f d ees e f g a |
  bes16 c d f a g f des c bes a e g f e f |
  bes a aes a d c b c g' f e f a aes g aes |
  d c f, bes a d, g f a, d c e, g bes a8 | \break

  r8 \tuplet 3/2 {b'16 a g} e c a e aes e' \tuplet 3/2 {c aes e} g e' \tuplet 3/2 { c g e } |
  fis16 g aes a c e \tuplet 3/2 { g a b } d c b d c b a aes |
  g ges f e d4 r8 \tuplet 3/2 {g,16 a d} \tuplet 3/2 {e8 f g} |
  \tuplet 3/2{e16 f d8 e} \tuplet 3/2 { f g aes } \tuplet 3/2 { b g g8 ~ } g8 g |
  c4 \tuplet 3/2 {g16 aes g } f8 e c8 ~ c4 |
  r8 \tuplet 3/2 {fis16 g fis} d8. b16 e,8 a16 g aes e' ~ e8 |
  e4 c8 a f a c e |
  g4 e8 g gis4 e8 gis |
  a4. e8 c c ~ c c8 |
  r2.. e16 f |
  g8 fis f c' e, g, a g |
  c bes ~ bes4 \tuplet 3/2 { g16 a g } f8 d ees |
  e g ~ g4 r2 |

}

theChords = \chordmode {
    \set chordChanges = ##t

    c1:maj7 |
    b2:m7 e2:7 |
    f1:maj7 |
    g2:7 aes2:dim7 |
    a1:m7 |
    d1:7  |
    d:m7 |
    e4:m7 a:7 d:min7 g:7 |

    c1:maj7 |
    b2:m7 e2:7 |
    f1:maj7 |
    g2:7 aes2:dim7 |
    a1:m7 |
    d1:7  |
    d2:m7 g2:7 |
    c1:maj7 |

    g1:m7 | c1:7 | f1:maj7 | f1:maj7 |
    d1:7 | d1:7 | d1:m7 | g:7 |

    c1:maj7 |
    b2:m7 e2:7 |
    f1:maj7 |
    g2:7 aes2:dim7 |
    a1:m7 |
    d1:7  |
    d2:m7 g2:7 |
    c1:maj7 |
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
