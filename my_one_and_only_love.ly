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

title = #"My One And Only Love"
composer = #"(as played by Grant Green)"
meter = #" (Ballad)"

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

    \repeat volta 2 {
      r8 bes8 c ees f g d' bes |
      c4. f8 d4. bes16 aes |
      g4. ees'8 c4. aes16 g |
      f4. d'8 bes2 | \break

      r8 aes8 bes c bes aes8 g d |
      ees8 c4. r2 |

    }
    \alternative {
       {
         r8 aes'4 bes16 c bes4 d, |
         bes2 r2 |
       }
       {
         r8 aes'8 bes c bes aes f d |
         ees4. ees8 f16 ees bes ges f8 ees
       }
    } \break

    d4 d''8 c16 bes d8 d4 c16 bes |
    d,8 d4. r4 r8 d |
    d'8 d4 c16 bes d8 f4 c16 bes |
    d,16 f d4. r4 r8 d | \break

    g4. a16 bes g4. d8 |
    g8 g4 a16 bes g a g4. |
    \tuplet 3/2 { f4 f f } aes4. f16 aes |
    c8 c4 bes8 des16 b ges aes bes aes g f | \break

      bes,8 bes8 c ees f g d' bes |
      c4. f8 d4. bes16 aes |
      g4. ees'8 c4. aes16 g |
      f4. d'8 bes2 | \break

      r8 aes8 bes c bes aes8 g d |
      ees8 c4. r2 |

      r8 aes'8 bes c bes aes f d |
      ees2 r2

}

theChords = \chordmode {
    \set chordChanges = ##t

    \repeat volta 2 {
      ees2:maj7 g:m7 |
      aes:maj7 bes:7 |
      c:m7 aes:maj7 |
      d:m7 g4:m7 c:m7 |
      f2:m7 bes4:7 b:dim7 |
      c2:m7 g4:m7 ges:m7 |
   }
   \alternative {
      {
        f2:m7 bes:7 |
        g4:m7 ges:m7 bes:7 e:7 |
      }
      {
        f2:m7 bes:7 |
        g4:m7 ges:m7 f:m7 e:7 |
      }
   }
   g1:m7 |
   a2:m7.5- d:7.9+ |
   g1:m7 |
   a2:m7.5- d:7.9+ |

   g1:m7 |
   a2:m7.5- d:7.9+ |

   f1:m7 |
   f2:m7 f4:dim7 e:7

      ees2:maj7 g:m7 |
      aes:maj7 bes:7 |
      c:m7 aes:maj7 |
      d:m7 g4:m7 c:m7 |
      f2:m7 bes4:7 b:dim7 |
      c2:m7 g4:m7 ges:m7 |
      f2:m7 bes:7 |
      e:maj7
}

%   The very thought of you makes my heart sing
%   Like an April breeze on the wings of spring
%   And you appear in all your splendor
%   My one and only love
%
%   The shadows fall and spread their mystic charms
%   In the hush of night while you're in my arms
%   I feel your lips, so warm and tender
%   My one and only love
%
%   The touch of your hand is like heaven
%   A heaven that I've never known
%   The blush on your cheek whenever I speak
%   Tells me that you are my own
%
%   You fill my eager heart with such desire
%   Every kiss you give sets my soul on fire
%   I give myself in sweet surrender
%   My one and only love

\score {
  <<
    \new ChordNames \tpose \theChords
    \new Voice = soloist \tpose \theNotes
  >>
  \layout {
    \override Score.Clef #'break-visibility = #'#(#f #f #f)  % make only the first clef visible
    \override Score.KeySignature #'break-visibility = #'#(#f #f #f)  % make only the first time signature visible
    \override Score.SystemStartBar #'collapse-height = #1  % allow single-staff system bars
  }
  \midi {
    \tempo 4 = 54
  }
}
