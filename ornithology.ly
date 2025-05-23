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

title = #"Ornithology"
composer = #"Charlie Parker"
meter = #"Uptempo"

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
  \key g \major

  \section
  \sectionLabel "solo"
  r2 r4 r8 a8 |
  fis8 a d c b g e ees |
  d c \tuplet 3/2 { b d fis }  a4 r8 bes ~ |
  bes8 c16 bes a8 g c g r4 |
  r1 | \break

  f4 c a'8 bes a g |
  f d c bes a c d aes' ~ |
  aes4 ees8 c g' f ~ f4 |
  r1 | \break

  r8 d \tuplet 3/2 { e g bes } f'4 ees8 d~
  d4  c16 d c bes a8 g fis a |
  e8 bes c ees d bes g a |
  c a r8 a' bes fis ees d | \break

  a'8 fis r2. |
  r4 a8 fis aes des ~ des4 |
  c8 g e d b' bes a aes |
  g8 e c16 a g'8 ~ g ees16 b aes8 fis' ~ | \break

  fis8 e4 e8 ~ e8 fis4 e16 d |
  b16 g e'8 ~ e4 r4 r8 f8 ~ |
  f d16 bes a g e'8 ~ e f ~ f8 d16 bes |
  a16 g e'8 ~ e4 r2 | \break

  r8 e \tuplet 3/2 { f a c } e ees d des |
  c a bes c16 bes a8 f d c |
  c'4 g8 aes ~ aes4 r4 |
  r4. ees8 g bes ees d ~ | \break

  d bes8 c bes aes g8 ~ g4 |
  r8 bes \tuplet 3/2 { a16 bes a } g8 fis8 a e a, |
  c8 ees d c b4 r4 |
  r2 r4 r8 e'8 | \break

  f a, g gis e' ees d des |
  c8 g \tuplet 3/2 {e c ees ~ } ees r4 d'16 c |
  bes8 a aes c, d f e ees |
  d b \tuplet 3/2 {c e g} b4 d8 e, ~ | \break
  e4 r2. | r1 | r1 | r1 |

}

theChords = \chordmode {
    \set chordChanges = ##t

    g1:maj7 |

    g1:maj7 | g1:maj7 | g1:m7 | c1:7 |
    f1:maj7 | f1:maj7 | f1:m7 | bes:7 |
    ees:7 | a2:m7.5- d2:7 | g1:m7 | d1:7 |
    b:m7  | e:7 | b2:m7 bes2:m7 | a2:m7 d2:7 | \break

    g1:maj7 | g1:maj7 | g1:m7 | c1:7 |
    f1:maj7 | f1:maj7 | f1:m7 | bes:7 |
    ees:7 | a2:m7 d2:7 | g1:7 | c2:m7 f2:7 |
    b2:m7 e:7 | a2:m7 d:7 | g1:7 | a2:m7 d2:7 | \break

    g1:maj7 | r1 | r1 | r1 |
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
