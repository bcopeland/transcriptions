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

title = #"Scrapple From The Apple"
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

  \section
  \sectionLabel "head"
  \repeat volta 2 {
  r8 fis8 g bes a g f d |
  g c r4 r8 bes r8 a |
  bes8 f' \tuplet 3/2 {d bes g} a d, g cis, |
  r4 r8 a' r8 bes r8 a | \break
  c8 a \tuplet 3/2 {g f g} r4 r8 f' |
  d4 r8 e r8 d \tuplet 3/2 {a bes b} |
  c4 r8 a8 bes a gis a |
  \alternative {
    \volta 1 { c8 a bes16 a c8 r2 }
    \volta 2 { f,8 c e f r2 }
  }
  } | \break

  r2 fis'16 g fis e d8 cis |
  b a g fis e d cis e |
  g b ~ b g a e ~ e4 |
  r4 r8 d16 des c16 b a g fis4 | \break

  r4 r8 cis'16 d \tuplet 6/4 {e g a b cis d} e cis d e |
  g4 e8 a, r8 fis \tuplet 3/2 {g8 bes d} |
  f8 \tuplet 3/2 {e16 d c} bes8 a g f \tuplet 3/2 {e g bes} |
  d4 g,8 a c bes r4 | \break

  r8 fis8 g bes a g f d |
  g c r4 r8 bes r8 a |
  bes8 f' \tuplet 3/2 {d bes g} a d, g cis, |
  r4 r8 a' r8 bes r8 a | \break
  c8 a \tuplet 3/2 {g f g} r4 r8 f' |
  d4 r8 e r8 d \tuplet 3/2 {a bes b} |
  c4 r8 a8 bes a gis a |
  f8 c e f r2 | \break

  \section
  \sectionLabel "solo"
  r4 fis,16 g bes d f8 d e c' ~ |
  c4 bes16 f d bes a'4 r4 |
  r4 r8 f \tuplet 3/2 {g16 a g} f8 e8 d |
  f8 des bes g aes e' d des | \break

  c bes \tuplet 3/2 {d f a} d des c b |
  bes8 f g aes ~ aes4\mordent aes4 |
  r2 r8 f g aes ~ |
  aes4\mordent aes4 r2 | \break

  r2 r8 fis8 \tuplet 3/2 { g bes d } |
  f \tuplet 3/2 { e16 d c} bes8 a g f \tuplet 3/2 {e g bes} |
  des16 ees c8 ~ c bes16 c a8 g16 a f4 |
  r2 r8 e16 f g f e d | \break

  c4 r4 r8 a8 ~ a8 c |
  g a bes d gis, b d b |
  c bes a16 c e g f8 c ~ c4 |
  r1 | \break

  r4 d8 c cis8 e g a |
  b8 g e cis fis f e ees |
  d8 cis c16 d e g b8 g a d ~ |
  d4 r2. | \break

  r2 r8 d,16 e f g a c |
  e cis d e g4 ~ g8 f f \tuplet 3/2 { e16 d c } |
  bes8 a g f \tuplet 3/2 { e g bes} d g, |
  a c \tuplet 3/2 { bes16 c bes } a8 g f e d | \break

  c'4 r4 a8 f g bes, ~ |
  bes4 r2. |
  r4 r8 des'16 c b4 fis8 bes |
  \tuplet 3/2 { aes16 bes aes } fis8 ees e g f e d | \break

  c4 r8 bes a16 c e g f8 cis |
  \tuplet 3/2 { d f a } c bes ~ bes4 cis,8 bes |
  c bes' g8 gis a f d des |
  c bes a8 g fis16 a c d ees d8. |
}

theChords = \chordmode {
    \set chordChanges = ##t

    g1:m7 | c1:7 | g1:m7 | c1:7 |
    f2:maj7 f:7 | bes2:7 b:dim7 |
    f:maj7 g:m7 | a2:m7 d:7 |

    f1:maj7 |

    a1:7 | a1:7 | d1:7 | d1:7 |
    g1:7 | g1:7 | c1:7 | c1:7 |

    g1:m7 | c1:7 | g1:m7 | c1:7 |
    f2:maj7 f:7 | bes2:7 b:dim7 |
    f:maj7 g:m7 | f1:maj7 |

    % solo
    g1:m7 | c1:7 | g1:m7 | c1:7 |
    f2:maj7 f:7 | bes2:7 b:dim7 |
    f:maj7 g:m7 | a2:m7 d:7 |

    g1:m7 | c1:7 | g1:m7 | c1:7 |
    f2:maj7 f:7 | bes2:7 b:dim7 |
    f:maj7 g:m7 | f1:maj7 |

    a1:7 | a1:7 | d1:7 | d1:7 |
    g1:7 | g1:7 | c1:7 | c1:7 |

    g1:m7 | c1:7 | g1:m7 | c1:7 |
    f2:maj7 f:7 | bes2:7 b:dim7 |
    f:maj7 g:m7 | f1:maj7 |
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
