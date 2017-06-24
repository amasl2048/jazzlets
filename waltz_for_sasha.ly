\version "2.16.2"
\header {
    title = "Waltz for Sasha"
    subtitle = "(for my loved wife)"
    composer = "A. Mussyaka" 
    tagline = ""  % removed 
}

empty = {
  r2. r2. r2. r2. \break
}

solo = \relative c'' {
  \clef treble
  \key e \minor
  
  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A
\mark \markup {\box A}

e4 b' d,8  e |
\times 2/3 {e8 fis d} e4 b' |
\times 2/3 {cis8 b a} fis4 r16 g16 fis8 |
d4 \times 2/3 {d8 e c} d8. c16 |

  \break

b8 e b4 g |
\times 2/3 {a'8 e ees} d4 c |
r8 d8 e fis a d | 
\times 3/4 {cis4 b fis d} |

  \break

% Bridge
\mark \markup {\box B}  

a'4 fis d8 fis |
\times 2/3 {e8 d b} \times 2/3 {e d g,} r4 |
\times 2/3 {e'8 d b} \times 2/3 {e d g,} a4 |
b2. |

\break

\times 2/3 {d8 fis gis} \times 2/3 {c, cis a} r4 |
\times 2/3 {e'8 fis g} c,4 cis |
b8 e b4 a |
b8 e b4 r4 |

%\break

%A'
%\mark \markup {\box A'}
%  \empty
%  \empty
%  \empty
%  \break
} % end solo

apart = \chordmode {
a2.:m7 a:m7 d:maj a:m7
c:maj f:maj e:m7 d:maj
}

bridge = \chordmode {
g2.:maj c:maj d:maj e:maj
a:maj d:maj f:maj g:6
}

harmonies = \chordmode {
%A1
 \apart
%A2
 \bridge
%A'
} % end harmonies

\score {
  <<
    \time 3/4
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \solo
    }
  >>
  \layout {}
  \midi {\tempo 4 = 90}
}