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

title = #"Blues For Alice"
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
    \partial 8 f'8 ~ |
    f4 c8 a e'4 c8 a |
    d8 e b d cis bes g a8 ~ |
    a4 \tuplet 3/2 {f8 g f} g a f e |
    \tuplet 3/2 {ees g bes} d8 des8 r8 f,8 \tuplet 3/2 { f g f } | \break

    c'4 bes8 f aes bes,8 r8 g'8 |
    ees'8 des bes b c f, g a8 ~ |
    a4 e8 c d4 r8 des'8 ~ |
    des4 b8 ees, bes'4 r8 aes8 | \break

    \tuplet 3/2 { g4 f' f } f8 d bes d, |
    a'8 g c bes ees4 r8 c8 ~|
    c4 a8 f g4 r8 d'8 ~ |
    d4 bes8 g a4 r8 c,8 | \break

% solo

    \tuplet 3/2 { d8 e g } f8 d e f c cis |
    d4 \tuplet 3/2 { cis8 e g } bes8 c16 bes a4 |
    g4 d8 ees ~ ees4 r4 |
    r2 r8 f16 f f8 b8 | \break

    r8 bes8 r8 f b4 bes |
    g8 aes8 f g16 f ees8 c \tuplet 3/2 { bes16 b bes} f8 |
    a4 \tuplet 3/2 { c8 e g } f4 d8 ees8 ~ |
    ees4 r4 r8 d8 ~ d4 | \break

    bes'8 bes a g c g r4 |
    r8 ees8 e16 fis g a f' d ees e c cis d c |
    bes g c bes16 a f cis bes16 c4 r4 |
    r2 r4 r8 e8 | \break

    \tuplet 3/2 { f8 a c } \tuplet 3/2 { e8 f fis } g8 fis f d |
    des8 e,8 g8 a bes c16 bes a4 |
    \tuplet 3/2 { g8 a g } des8 f4 r8 \tuplet 3/2 {g8 a g} |
    ees8 f8 ~ f4 r2 | \break

    r8 d8 ~ d8 f16 aes c8 bes \tuplet 3/2 { aes16 bes aes } f8 |
    \tuplet 3/2 { g4 f ees } \tuplet 3/2 { c bes f4 } |
    a4 \tuplet 3/2 { c8 e g } c aes f des |
    des' bes \tuplet 3/2 {g ees c} bes' aes8 ~ aes4 | \break

    r4 r8 ees e16 fis g a f'4 |
    r8 e,8 f16 g a bes cis c bes a g f e a, |
    bes cis c a bes16 a' e f g4 r8 c,8 ~ |
    c2 r2 |
}

theChords = \chordmode {
    \set chordChanges = ##t

    f8:maj7 |

    f1:maj7 | e2:m7.5- a2:7 | d2:m7 g2:7 | c2:m7 f:7 |
    bes1:7 | bes2:m7 ees2:7 | a2:m7 d2:7 | aes2:m7 des2:7 |
    g1:m7 | c1:7 | f2:maj7 d2:7 | g:m7 c:7 |

    f1:maj7 | e2:m7.5- a2:7 | d2:m7 g2:7 | c2:m7 f:7 |
    bes1:7 | bes2:m7 ees2:7 | a2:m7 d2:7 | aes2:m7 des2:7 |
    g1:m7 | c1:7 | f2:maj7 d2:7 | g:m7 c:7 |

    f1:maj7 | e2:m7.5- a2:7 | d2:m7 g2:7 | c2:m7 f:7 |
    bes1:7 | bes2:m7 ees2:7 | a2:m7 d2:7 | aes2:m7 des2:7 |
    g1:m7 | c1:7 | f2:maj7 d2:7 | g:m7 c:7 |
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
