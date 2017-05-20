\version "2.16.2"
\paper {
  top-margin    = 2\cm
  bottom-margin = 3\cm
}
\header {
    title = "Gnossienne - No. 1"
    subtitle = "(Improvisation by Andrey & Nikita)"
    composer = "Erik Satie" 
    tagline = ""  % removed 
}

empty = {
  r1 r1 r1 r1 \break
}

solo = \relative c'' {
  \clef treble
  \key a \minor
  \time 4/4
  \set Staff.instrumentName = #"Guitar"

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% 1
\mark \markup {\box 1}

c8 e g fis g (fis) a4 |
a,,4 <e' a>8 a,8 a8 <e' a>4. |
dis''8 a \times 2/3 {c g fis} e b c4 |
a,4 <a' c>8 a,8 a8 <a' c>4. |

\break

a,4 dis''4 b8 g e fis |
e8 d b a a,8 <gis' c>~ <gis c>4 |
\times 2/3 {e8 a b} c4 \times 2/3 {e8 (d) b} a8 g |
a,4 <e' a>8 a,8 a8 <e' a>4. |

\break

r4 <e a>8 a,8 a8 <e' a>4. |
a,4 d''8 gis~ gis4 a,,,8 e'' | 
a,,8 <a' c>~ <a c>4 a,4 a''8 dis~ | 
dis4 a,,8 e'' a,, <gis' c>~ <gis c>4 |

\break
% 2
\mark \markup {\box 2}

\times 2/3 {b'8 (c) d} c8 b \times 2/3 {g fis (e)} fis4 |
dis8 c a ais g e f d |
\times 2/3 {d8 cis c} b4 a <e' a> |
a,4 <e' a>8 a,8 a8 <e' a>4. |

\break
\empty

\empty

} % end solo

harmony = \chordmode {

a1:m7 a:m7 a:m7 a:m7 
a:m7 a:m7 e:m7 a:m7

a1:m7 a:m7 a:m7 a:m7 
a:m7 a:m7 e:m7 a:m7

d:m7 d:m7 a:m7 a:m7
d:m7 d:m7 a:m7 a:m7

} % end harmony

\score {
  <<
    \time 4/4 
    \new ChordNames {
      \set chordChanges = ##t
      \harmony
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \solo
    }

  >>
  \layout {}
  \midi {\tempo 4 = 116}
}