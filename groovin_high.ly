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

title = #"Groovin' High"
composer = #"-Dizzy Gillespie"
meter = #" (Med. Swing)"

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
          bes'8 g r2. |
          bes8 g r2. |
          r8 e a c b a aes e |
          g f fis d' ~ d4 bes16 c bes a | \break

          bes8 g r2. |
          bes8 g r2. |
          r8 d g bes a g fis d |
          f ees e c' ~ c4 bes8 g | \break

          a8 f r2. |
          a8 f r2. |
          r8 c f aes g f e c |
          ees8 cis d bes' ~ bes4 aes8 fis | \break

          g bes d f ~ f4 d8 bes |
          e cis r2 r8 e, |
          f a c ees ~ ees4 c8 a |
          d b r2 bes16 c bes a | \break


          bes8 g r2. |
          bes8 g r2. |
          r8 e a c b a aes e |
          g f fis d' ~ d4 bes16 c bes a | \break

          bes8 g r2. |
          bes8 g r2. |
          r8 d' bes g fis bes d f |
          \tuplet 3/2 { cis8 d dis } e8 c ~ c4 bes8 g | \break

          a8 f r2. |
          a8 f r2. |
          r8 c f aes g aes c e |
          ees8 c d bes ~ bes4 aes8 g | \break

          f4 f8 g aes g f4 |
          aes aes8 bes b bes aes4 |
          ees'2 ees2 |
          ces2 ces2 | \break

          r4 \tuplet 3/2 { b8 cis b } bes8 a aes ees g | \break

          fis ~ fis4 cis8 b ~ b4 |
          bes4. bes' r8 g8 |
          f4 ees8 f g bes4 c8 ~ |
          c4 \tuplet 3/2 { b8 c b } a g fis e | \break

          ees8 r4 cis2 b8 |
          bes8 a aes fis g bes4 d8 |
          f8 d ees f \tuplet 3/2 { fis4 bes c } |
          cis2 r4 cis8 cis ~ | \break

          cis4 g8 c4 r8 c8 bes |
          a g f e ees d c bes |
          a8 c ees4 fis8 f ees4 |
          f4. c' aes8 ees | \break

          g8 f r2. |
          r1 | r1 | r1 | r1 |

}

theChords = \chordmode {
    \set chordChanges = ##t
    ees1:maj7 | ees:maj7 | a:m7 | d:7 |
    ees1:maj7 | ees:maj7 | g:m7 | c:7 |
    f:7       | f:7      | f:m7 |
    bes:7 |  g:m7      | fis:m7   | f:m7  | bes:7 |


    ees1:maj7 | ees:maj7 | a:m7 | d:7 |
    ees1:maj7 | ees:maj7 | g:m7 | c:7 |
    f:7       | f:7      | f:m7 |
    bes:7 | f:m7       | des:m7   | ees:6 | f2:m7 bes:7 |

    r1 | r1 | \break

    ees1:maj7 | ees:maj7 | a:m7 | d:7 |
    ees1:maj7 | ees:maj7 | g:m7 | c:7 |
    f:7       | f:7      | f:m7 |
    bes:7 |  g:m7      | fis:m7   | f:m7  | bes:7 |
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
