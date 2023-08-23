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
    bes'8 c bes g r4 r8 g |  % g?
    d'4 f8 c r8 f,8 r8 d' |
    bes8 c bes f ees' d bes aes ~ |
    aes8 g' r8 f c aes fis g | \break

    f' ees8 bes g bes4 r8 des ~ |
    des4 bes8 g c bes ges f |
    r4 r8 bes8 a4 r8 c |
    fis8 e \tuplet 3/2 { b ges ees'} r4 r8 des8 | \break

    c8 g r8 a c bes a g |
    fis8 bes c d ees8 r8 d8 ees |
    \tuplet 3/2 {d16 ees d} c8 ees r8 d ees \tuplet 3/2 {d16 ees d} c8 |
    ees r8 r4 r8 d8 ~ d4 |

    bes'4 r4 \tuplet 3/2 { aes16 bes aes } f8 ees8 bes8 |
    c8 des bes g c bes \tuplet 3/2 {c ees ges} |
    f ees d c bes a aes c |
    bes'8 ges des a c bes d, aes' | \break

    fis g c f ees2 |
    r1 |
    r8 f8 \tuplet 3/2 { g bes d } f ees d c |
    b d, f g aes a16 aes g8 f | \break

    ees4 r8 ees8 ~ ees8 c bes g |
    a f'8 ~ f2 c8 f8 ~ |
    f2 cis8 f8 ~ f4 |
    d8 f8 ~ f4 r2 | \break

    r8 r8 r2. |
}

theChords = \chordmode {
    \set chordChanges = ##t

    bes1:7 | ees1:7 | bes1:7 | bes1:7 |
    ees1:7 | ees1:7 | bes1:7 | g1:7 |
    c:m7 | f:7 | bes1:7 | c2:m7 f:7 |

    bes1:7 | ees1:7 | bes1:7 | bes1:7 |
    ees1:7 | ees1:7 | bes1:7 | g1:7 |
    c:m7 | f:7 | bes1:7 | c2:m7 f:7 |
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
