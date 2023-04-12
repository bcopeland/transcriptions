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

title = #"Moose the Mooche"
composer = #"Charlie Parker"
meter = #" Uptempo"

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
  \set Staff.midiInstrument = "alto sax"
  \key bes \major
    f4 r8 f'4 d8 ees4 |
    r8 bes g f bes4 cis8 d |
    f,4 r8 d'4 bes8 c4 |
    r8 f,8 f4 c'8 f,4 g8 | \break

    aes aes g ges f4 r8 c' ~ |
    c bes4 g8 cis d cis d |
    f,4 r8 bes d ees d a8 ~ |
    a8 bes g4 f4 aes8 f ~ | \break

    f4 r8 f'4 d8 ees4 |
    r8 bes g f bes ges ees c |
    f4 r8 d'4 bes8 c4 |
    r8 ees, g4 c4 d8 aes8 ~ | \break

    aes4 f8 d bes g' r8 ees' |
    f d \tuplet 3/2 {bes16 c bes} aes8 g cis4 bes8 |
    c4 r8 ees4 g8 f4 |
    r8 a4 c8 bes d, ees e ~ | \break

    e4 r8 a8 r8 g8 r8 fis |
    e c cis d8 ~ d4 r8 b8 |
    a8 fis g a e' d b a ~ |
    a4 r8 g r8 a r8 g | \break

    bes4 r8 g a g e4 |
    d8 c d a'4. r8 g |
    f4 r8 d ees d cis d |
    ees4 r8 aes r8 ges r8 e | \break

    f4 r8 f'4 d8 ees4 |
    r8 bes g f bes4 cis8 d |
    f,4 r8 d'4 bes8 c4 |
    r8 f,8 f4 c'8 f,4 g8 | \break

    aes aes g ges f4 r8 c' ~ |
    c bes4 g8 cis d cis d |
    f,4 r8 c'8 ~ \tuplet 3/2 { c16 cis c } bes8 c4 |
    r8 bes8 ~ \tuplet 3/2 { bes16 c bes } g8 bes4 r4 | \break

    r2 c8 b bes4 |
    ees8 ges ees4 f8 ees d4 |
    bes'4 f g2 |
    r1 | \break

    r2 c8 b bes aes |
    g8 f ees4 bes'8 ges8 ees4 |
    d8 bes8 a8 bes c8 bes8 a8 bes8 ~ |
    bes4 r2. | \break

    r8 e8 \tuplet 3/2 { f bes d } f4 ees8 c ~ |
    c4 r2. |
    r8 d16 c16 bes8 a g ges f e |
    ees8 bes g4 cis8 d a4 | \break

    c8 b bes4 r4 bes'8 aes |
    g8 f ees4 \tuplet 3/2 {aes16 bes aes16} g8 ees4 |
    d8 f8 ~ f4 r2 |
    r1 | \break

    r8 a, \tuplet 3/2 { c e g } b4 \tuplet 3/2 { aes8 e c} |
    b'8 aes r4 r8 d, r8 aes' |
    \tuplet 3/2 {e'8 ees d} des4 r2 |
    r2 \tuplet 3/2 { c8 d c } bes8 a | \break

    g f8 e ees d bes g4 |
    c4 r8 c16 f a8 g e4 |
    f4 d8 ees8 ~ ees8 r8 r4 |
    r2 r8 f'8 f f | \break

    f ees r4 r8 f8 ~ f4 |
    d4 f8 c8 ~ c4 r8 bes8 |
    c8 a8 r4 r8 b8 \tuplet 3/2 { aes8 e des } |
    \tuplet 3/2 { bes'8 b bes8} a8 g f ees d c |
    bes4 r4 bes'8 aes g f | \break

    ees8 bes c cis ~ cis4 r4 |
    r2 r8 bes8 c d ~ |
    d8 bes c bes8 r8 fis'8 r8 e8 |
    f8 d4 r8 r2 | \break
}

theChords = \chordmode {
    \set chordChanges = ##t

    bes1:maj7 |
    c2:m7 f:7 |
    bes1:maj7 |
    c2:m7 f:7 |
    f:m7 bes:7 |
    ees1:7 |
    bes1:maj7 |
    c2:m7 f:7 |

    bes1:maj7 |
    c2:m7 f:7 |
    bes1:maj7 |
    c2:m7 f:7 |
    f:m7 bes:7 |
    ees2:7 aes:7 |
    bes1:maj7 |
    bes1:maj7 |

    a1:m7 | d1:7
    d:m7 | g:7
    g:m7 | c:7
    c:m7 | f:7

    bes1:maj7 |
    c2:m7 f:7 |
    bes1:maj7 |
    c2:m7 f:7 |
    f:m7 bes:7 |
    ees1:m7 |
    bes1:maj7 |
    c2:m7 f:7 |

    bes1:maj7 |
    c2:m7 f:7 |
    bes1:maj7 |
    c2:m7 f:7 |
    f:m7 bes:7 |
    ees1:7 |
    bes1:maj7 |
    c2:m7 f:7 |

    bes1:maj7 |
    c2:m7 f:7 |
    bes1:maj7 |
    c2:m7 f:7 |
    f:m7 bes:7 |
    ees2:7 aes:7 |
    bes1:maj7 |
    bes1:maj7 |

    a1:m7 | d1:7
    d:m7 | g:7
    g:m7 | c:7
    c:m7 | f:7

    bes1:maj7 |
    c2:m7 f:7 |
    bes1:maj7 |
    c2:m7 f:7 |
    f:m7 bes:7 |
    ees1:m7 |
    bes1:maj7 |
    c2:m7 f:7 |

    bes1:maj7
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
