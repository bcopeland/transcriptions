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

title = #"On Green Dolphin Street"
composer = #"Solo by Cannonball Adderly"
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
  \set Staff.midiInstrument = "piano"
  \key ees \major

  ees16 d ees f g8 f aes g bes aes16 bes |
  c8 f, aes d,16 f aes c g f bes a aes g |
  ees bes g bes f' a,16 bes ees f8 g16 aes bes16 c d ees |
  f e ees bes d8 c ~ c4 r4 | \break

  r8 f,8 \tuplet 3/2 {ges16 bes des} f8 ges des bes aes |
  ges des a bes des ges g f |
  \tuplet 3/2 {e f g } f c bes aes a aes' |
  f ges ees b bes a aes ges | \break

  g d r8 f8 ~ f4 bes8 f'8 ~ |
  f8 ees16 f \tuplet 3/2 {g16 bes des} f8 ~ f2 |
  r8 aes8 ~ aes aes g g f f |
  ees ees d d ~ d c c  bes | \break

  a8 bes r8 g r4 r8 aes |
  f16 fis g fis ees8 f ges aes bes des |
  b16 c b bes aes8 bes aes ges f e |
  ees16 f ees d des8 c b ees bes aes | \break

  des f, ges b bes ges f4 |
  r8 d'16 ees c8 des d c' ~ c bes ~ |
  bes2 r2 |
  r8 bes, c16 d ees f g aes bes c d8 ees | \break

  bes4 r8 des bes aes ges ees |
  des8 bes aes f ges d' ~ d c |
  \tuplet 3/2 { b8 c d } c bes a a' ~ a g |
  aes4 r8 e' g, e' c aes | \break

  e8 c a e ees' b bes aes8 |
  g16 aes des f a8 g aes e c aes |
  g'8 \tuplet 3/2 { e16 c aes ~} aes8 f' ~ f4 r4 |
  r8 aes8 \tuplet 3/2 { a c8 a } bes16 b g'8 ~ g4 ~ | \break

  g8 d8 f e ees d c bes |
  a4 d8 f, ges4 d'8 c |
  bes g d ees e c' ~ c8 \tuplet 3/2 { c16 b bes } |
  aes8 f c aes b ges' d bes |
  f' d \tuplet 3/2 { ees16 g bes } d8 ees c aes f |
  f4 ees8 des d8 bes ~ bes4 |
}

theChords = \chordmode {
    \set chordChanges = ##t

    ees1:maj7 | ees1:maj7 |

    ees1:maj7 | ees1:maj7 |
    ees1:m7 | ees1:m7 |

    f1:7 | e:maj7 | ees1:maj7 | ees1:maj7 |

    f1:m7 | bes:7 | ees:maj7 | ees:maj7 |
    aes:m7 | des:7 | ges:maj7 | f2:m7 bes:7 |

    ees1:maj7 | ees1:maj7 |
    ees1:m7 | ees1:m7 |

    f1:7 | e:maj7 | ees1:maj7 | ees1:maj7 |
    f1:m7 | d2:m7.5- g2:7.9- | c1:m7 | a2:m7.5- d2:7.9- |
    g2:m7 c2:7 | f:m7 bes:7 | ees1:6 | f2:m7 bes:7 |
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
