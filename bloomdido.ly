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

title = #"Bloomdido"
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
  \key bes \major
    bes'8 c bes g r4 r8 bes |
    d4 f8 c r8 f,8 r8 d' |
    bes8 c bes f ees' d bes aes ~ |
    aes8 g' r8 f c aes fis g | \break

    f' ees8 bes g bes4 r8 des ~ |
    des4 bes8 g c bes ges f |
    r4 r8 bes8 a4 r8 c |
    fis8 e \tuplet 3/2 { b aes ees' ~ } ees4 r8 des8 | \break

    c8 g r8 a c bes a g |
    fis8 bes c d ees8 r8 d8 ees |
    \tuplet 3/2 {d16 ees d} c8 ees r8 d ees \tuplet 3/2 {d16 ees d} c8 |
    ees r8 r4 r8 d8 ~ d4 |

% 1st chorus
    bes'4 r4 \tuplet 3/2 { aes16 bes aes } f8 ees8 bes8 |
    c8 des bes g c bes \tuplet 3/2 {c ees ges} |
    f ees d c bes a aes c |
    bes'8 ges des bes c aes f bes | \break

    g bes c f ees2 |
    r1 |
    r8 f8 \tuplet 3/2 { g bes d } f ees d c |
    b d, f g aes bes16 aes g8 f | \break

    ees4 r8 ees8 ~ ees8 c bes g |
    a f'8 ~ f2 c8 f8 ~ |
    f2 cis8 f8 ~ f4 |
    d8 f8 ~ f4 r2 | \break

% 2nd chorus
    r8 bes, \tuplet 3/2 { d f g } bes aes g f |
    ees a, bes c des bes g f |
    c' bes a bes \tuplet 3/2 { d ees f } fis8 g8 |
    aes c, b bes g' fis e bes | \break

    b c16 b aes8 fis g f' ees g, |
    bes des bes g c bes des f |
    \tuplet 3/2 { a bes b } c a bes a g fis |
    f ees d c b aes' g f | \break

    ees g, r8 ees' ~ ees c bes gis |
    a4 r4 r4 \tuplet 3/2 { f'8 g bes } |
    d4 ~ \tuplet 3/2 {d8 f ees} d bes r4 |
    r2 r8 bes16 bes bes8 e ~ | \break

% 3rd chorus
    e8 ees ~ ees des ~ \tuplet 3/2 { des16 ees16 des } bes8 c8 bes |
    r4 r8 aes \tuplet 3/2 { bes aes f } ees bes |
    c des bes aes c g \tuplet 3/2 { ees' e g } |
    bes fis e bes b des aes fis | \break

    g f' ees g, bes des bes g |
    c bes r4 a'8 bes c a |
    f'4 c4 c2 |
    r2 r8 d ees f | \break

    d c r4 r4 r8 \tuplet 3/2 { d16 des c } |
    bes8 g ees c bes' gis a c |
    bes c16 bes ges8 f r4 r8 bes |
    r8 bes a g f ees d c | \break

% 4th chorus
    bes'4 f8 e ges4 r8 f |
    r8 bes, c ees c cis d cis |
    c b bes a aes c g' f |
    r2 r8 bes, g bes | \break

    \tuplet 3/2 { g aes bes } \tuplet 3/2 { g aes bes }
    \tuplet 3/2 { c cis d } \tuplet 3/2 { f fis g } |
    gis a16 bes gis4 r8 fis ees e |
    f es \tuplet 3/2 { d f a } c bes a g |
    f ees d c b aes' g f | \break

    ees g, r8 ees' ~ ees c bes gis |
    a4 r4 f'8 g bes d ~ |
    d4 bes4 r4 f8 g |
    bes d ~ d4 bes8 c bes g | \break

    bes4 r4 r2 |
}

theChords = \chordmode {
    \set chordChanges = ##t

    bes1:7 | ees1:7 | bes1:7 | bes1:7 |
    ees1:7 | ees1:7 | bes1:7 | g1:7 |
    c:m7 | f:7 | bes1:7 | c2:m7 f:7 |

    bes1:7 | ees1:7 | bes1:7 | bes1:7 |
    ees1:7 | ees1:7 | bes1:7 | g1:7 |
    c:m7 | f:7 | bes1:7 | c2:m7 f:7 |

    bes1:7 | ees1:7 | bes1:7 | bes1:7 |
    ees1:7 | ees1:7 | bes1:7 | g1:7 |
    c:m7 | f:7 | bes1:7 | c2:m7 f:7 |

    bes1:7 | ees1:7 | bes1:7 | bes1:7 |
    ees1:7 | ees1:7 | bes1:7 | g1:7 |
    c:m7 | f:7 | bes1:7 | c2:m7 f:7 |

    bes1:7 | ees1:7 | bes1:7 | bes1:7 |
    ees1:7 | ees1:7 | bes1:7 | g1:7 |
    c:m7 | f:7 | bes1:7 | c2:m7 f:7 |

    bes1:7
}

\score {
  <<
    \new ChordNames \theChords
    \new Voice = soloist \theNotes
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
