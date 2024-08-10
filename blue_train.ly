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

title = #"Blue Train"
composer = #"Coltrane (Lee Morgan solo)"
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
  \key ees \major

    \section
    \sectionLabel "head"
    r4. bes8 des f des ees ~ |
  \repeat volta 2 {
    ees1 ~ |
    ees4. bes8 des f des ees ~ |
    ees1 ~ | \break

    ees4. ees,8 ges bes ges aes ~ |
    aes1 ~ |
    aes4. bes8 des f des ees ~ |
    ees1 ~ | \break

    ees4. bes8 des ges ees des ~ |
    des1 ~ |
    des4. bes8 des f des ees ~ |
    ees1 ~ |
    ees4. bes8 des f des ees | \break
  }

  \section
  \sectionLabel "tpt solo"
  r2.. aes8 |
  \tuplet 3/2 { g aes g }
  \tuplet 3/2 { aes g aes }
  \tuplet 3/2 { g aes g }
  \tuplet 3/2 { aes g aes } |
  g aes8 ~ aes8  g \tuplet 3/2 { ees bes ees ~ } ees4 |
  r1 | \break

  r2 \tuplet 3/2 { r8 aes8 ges } \tuplet 3/2 { aes ges aes } |
  \tuplet 3/2 { ges aes ges }
  \tuplet 3/2 { aes ges aes }
  \tuplet 3/2 { ges aes ges }
  aes ges |
  aes4. g8 \tuplet 3/2 { ees bes d } ees4 |
  r4. \acciaccatura c'16 f8 ~ f8 c bes a | \break

  aes c \tuplet 3/2 { g aes e } f g aes bes |
  r8 \tuplet 3/2 {c16 d c} bes8 \tuplet 3/2 {f16 g f16} d8
     \tuplet 3/2 {c16 des c} bes8 aes |
  g4 c8 bes ees ees r4 |
  r4 \tuplet 3/2 {ees8 ees ees } bes'2 ~ | \break

  % 2nd chorus
  bes2. a16 des8. |
  a16 des8. a16 des8. des,16 ges8. des16 ges8. |
  des4 des8 des8 r2 |
  r2. g16 ees f g | \break

  aes4 r2. |
  c4 f8 e ees c \tuplet 3/2 { aes16 bes aes } f8 |
  ges8. c16 d8 c \tuplet 3/2 { bes f aes } g f |
  d ees \tuplet 3/2 { e g bes } des c ges ees | \break

  \tuplet 3/2 {f g aes} c8 aes \tuplet 3/2 {g16 aes g16} f8 r8 c'16 d |
  \tuplet 3/2 { b8 bes a } aes8 c g f bes4 ~ |
  bes2 ees16 bes8. bes4 |
  r1 | \break

  % 3rd chorus
  bes16 c32 bes a16 bes b c cis d ees bes a aes g ges f e |
  ees16 bes ees g e c e g f g aes f fis g \tuplet 3/2 {d' c b} |
  bes16 aes g f ees e f des ~ des16 bes aes8 c16 a bes c |
  des16 \tuplet 3/2 { ees e f } aes c a bes aes g16 f \tuplet 3/2 { ees32 e ees } des16 ees f g aes | \break

  bes16 g aes bes b c f e ees \tuplet 3/2 { des ees des } b c aes g f |
  bes16 g aes bes c aes ees ees ~ ees4 r4 |
  r16 g' aes fis g e f ees d des \tuplet 3/2 { c des c } bes aes f fis |
  g16 ees c bes f' d ees f g aes g f e8 \tuplet 3/2 { aes16 g ees } | \break

  f g aes bes c ees8 g16 ~ g16 e f ees d cis \tuplet 3/2 { d cis c } |
  bes a aes g f ees d f \tuplet 3/2 {cis' d cis} bes8 ges16 d b a |
  bes g f fis \tuplet 3/2 { g bes d } f d ees f g aes \tuplet 3/2 {des c b} bes a |
  aes g ges f ees f aes b aes a bes8 r16 bes16 r16 bes | \break

  % 4th chorus
  c8 c16 c c8 c16 c c8 c g'4 |
  r16 c,16 r16 c c c r16 c16 c8 ees ges4 |
  r4 r16 g aes e g e f ees d c g bes |
  bes16 c des ees aes g f ees32 des ees16 bes aes bes c aes f ees | \break

  bes'16 g aes bes b c f e ees \tuplet 3/2 { des ees des } b c aes g f |
  bes16 g aes bes b c r8 r4 r8 bes'16 b |
  c8. g16 bes8. ees,32 f aes4 g16 ees bes bes |
  f'16 d ees f g aes g f d ees e g, bes des bes aes | \break

  a aes g f e c g' e f g aes bes ees16 ees r16 g ~ |
  g16 e f8 d16 cis d32 cis c b bes16 a aes c g16 f \tuplet 3/2 { f ees d } |
  ees bes ees g e b e g f c f g aes4 |
  r16 b c b bes a aes c g f bes ees, f g f fis | \break

  % 5th chorus
  g8. ees'16 ~ ees4 ees16 ees8. ees4 |
  ges16 ees8. ees4 des16 ees8. ees4 |
  r8 ees \tuplet 3/2 { ges aes a } aes ges ees des ~ |
  \tuplet 3/2 { des16 ees des } bes8 \tuplet 3/2 { a16 bes a } aes8 ges ees ges aes | \break

  aes4 ges8 ees ges16 aes8. aes4 |
  \acciaccatura a8 bes4. ees8 a, aes f16 ges g8 ~ |
  g8 ees bes4 r2 |
  r8 aes'8 \tuplet 3/2 { g8 d f } \tuplet 3/2 { e8 g bes } des bes | \break

  c4 f,8 g aes bes c ees |
  d4 bes8 d c4 aes8 c |
  bes4 bes,8 aes' \tuplet 3/2 { g16 aes g } f8 e g |
  \tuplet 3/2 { f8 bes, ees } \tuplet 3/2 { d f aes } b bes e, d |
  ees8 ees8 ~ ees4 r2 | \break

}

theChords = \chordmode {
    \set chordChanges = ##t
    ees1:7 |

    ees1:7 | ees1:7 | ees:7 | ees:7 |
    aes:7 | aes:7 | ees:7 | c:m7.9- |
    f:m7  | bes:7 | ees2:7 c:m7.9- | f:m7 bes:7 |

    ees1:7 | ees1:7 | ees:7 | ees:7 |
    aes:7 | aes:7 | ees:7 | c:m7.9- |
    f:m7  | bes:7 | ees2:7 c:m7.9- | f:m7 bes:7 |

    ees1:7 | ees1:7 | ees:7 | ees:7 |
    aes:7 | aes:7 | ees:7 | c:m7.9- |
    f:m7  | bes:7 | ees2:7 c:m7.9- | f:m7 bes:7 |

    ees1:7 | ees1:7 | ees:7 | ees:7 |
    aes:7 | aes:7 | ees:7 | c:m7.9- |
    f:m7  | bes:7 | ees2:7 c:m7.9- | f:m7 bes:7 |

    ees1:7 | ees1:7 | ees:7 | ees:7 |
    aes:7 | aes:7 | ees:7 | c:m7.9- |
    f:m7  | bes:7 | ees2:7 c:m7.9- | f:m7 bes:7 |

    ees1:7 | ees1:7 | ees:7 | ees:7 |
    aes:7 | aes:7 | ees:7 | c:m7.9- |
    f:m7  | bes:7 | ees2:7 c:m7.9- | f:m7 bes:7 |
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
