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

title = #"Satin Doll"
composer = #"Joe Pass Solo"
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

theNotes = \relative c'' {
  \set Staff.midiInstrument = "flute"
  \key c \major
  \time 4/4

  \section
  \sectionLabel "solo"

  r1 | r1 |

  r8 c8 e g \tuplet 3/2 { f16 g f } e8 c a |
  d c b c e g \tuplet 3/2 { b16 c b } a8 | \break

  g f c a e' d r4 |
  r4 c8 a b a' aes ges |
  g d b g ges' d b g |
  f'8 fis16 g a8 e r4. a,8 | \break

  c d e d c a r4 |
  r4 b8 des ees des b aes | \break
  g8 d'16 b c8 a'16 fis g8 d'16 b c8 a'16 fis |

  g e f \tuplet 3/2 {g32 f e ~} e16 d16 b c cis16 e16 ais, gis a dis, e g | \break

  f4 \tuplet 3/2 { r8 f a } e' f g g |
  e c g f e e' d c |
  b a g f e d c b |
  \tuplet 3/2 { bes d f } a c bes f des bes | \break

  c e, aes b a e g e |
  aes bes des b ees, ges bes aes |
  g4 e'16 c8. f16 c8. fis16 c8. |
  g'16 c,8. c4 f8 e16 d c b bes d | \break

  a g fis e f4 r8 g16 a bes c d e |
  a f g a bes c \glissando a'8 a16 e g f b, c e d | \break

  c b bes a g f e d c bes g gis a c d e |
  g f e f a c e d \glissando c bes g gis a e g e | \break

  ges4 r4 r8 b8 d des |
  c a, \tuplet 3/2 { c e g } <c, fis b> <f a d> <d f bes> <b c f>8 ~ |
  <b c f>4 g'8 f e d c a |
  g g' \tuplet 3/2 { e cis a } f' g dis e | \break

  c8 a c8 a c e r4 |
  <fis, c'>4 r8 <g b e>8 r4. a8 |
  c a c a c e r8 <b e>8 |
  r8 <d f>8 r8 fis8 <cis g'>8 <cis g' a> r4 | \break

  <d, fis c' e>4 a'8 c e a e c |
  \tuplet 3/2 { g'16 a g } e8 \tuplet 3/2 { f a c } e f ees e |
  c g f ees e g a b |
  d c g e \tuplet 3/2 { b'16 c b } a8 g ges |
  f a c e g g r4 |
}

theChords = \chordmode {
    \time 4/4
    \set chordChanges = ##t

    r1 | r1 | r1 | r1 |

    d2:m7 g:7 |
    d2:m7 g:7 |
    e2:m7 a:7 |
    e2:m7 a:7 |

    d1:7 |
    des:7 |
    c:maj7 |
    c:maj7 |

    d2:m7 g:7 |
    d2:m7 g:7 |
    e2:m7 a:7 |
    e2:m7 a:7 |

    d1:7 |
    des:7 |
    c:maj7 |
    c:maj7 |

    g2:m7 c:7 |
    g2:m7 c:7 |
    f1:maj7 |
    f:maj7 |

    a2:m7 d:7 |
    a2:m7 d:7 |
    g1:7 |
    g2:7 a2:7 |

    d2:m7 g:7 |
    d2:m7 g:7 |
    e2:m7 a:7 |
    e2:m7 a:7 |

    d1:7 |
    des:7 |
    c:maj7 |
    c:maj7 |
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
    \tempo 4 = 160
  }
}
