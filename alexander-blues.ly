\version "2.16.2"

\paper {
  top-margin    = 2\cm
  bottom-margin = 2\cm
}

\header {
    title = "Alexander-Blues"
    subtitle = ""
    composer = "A.Mussyaka"
    tagline = ""  % removed
}


empty = {
  r1 r r r \break
}

riff = {
a,,8 <g' c e>4 a,8 <g' c e>4 <f bes d>
a,8 <g' c e>4 a,8 <g' c e>4 <f bes d>
}

solo = \relative c'' {
  \clef treble
  \key a \minor

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A
%\mark \markup {\box A}
c'4 c \times 2/3 {c8 (a) g} a4 |
\times 2/3 {g8 e d} e4 d g8 a |
\riff |

\break

c''4 c \times 2/3 {c8 (a) g} a4 |
\times 2/3 {g8 e d} e4 d g8 a |
\riff |

\break
<a d f c'>4 c' \times 2/3 {c8 (a) g} a4 |
<a, d f c'>4 c' \times 2/3 {c8 aes (e)} d'4 |
<a, d g>8 <e' a> r a,, <g' c e>4 <f bes d> |
a,8 <g' c e>4 a,8 <g' c e>4 <f bes d> |
} % end theme

harmonies = \chordmode {
a1:m7 d:m7 a:m7 a:m7
d:m7 d:m7 a:m7 a:m7
b:m7.5- e:7 a:m7 e:7
} % end harmonies

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \time 4/4
      \harmonies
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \time 4/4
      \solo
    }

  >>

  \layout {}
  \midi {\tempo 4 = 100}
}