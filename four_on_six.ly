\version "2.16.2"
\header {
    title = "Four on Six"
    subtitle = "(Improvisation by Andrey & Nikita)"
    composer = "Wes Montgomery" 
    tagline = ""  % removed 
}

empty = {
  r1 r1 r1 r1 \break
}

solo = \relative c'' {
  \clef treble
  \key g \minor
  
  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A1
%\mark \markup {\box Melody}
\empty


% A2
%\mark \markup {\box Accents}
\empty


% B
%\mark \markup {\box Melody} 
\empty

% A3
%\mark \markup {\box Break} 
\empty

} % end solo


harmonies = \chordmode {

g:m7 g:m7 g:m7 g:m7

\times 2/4 {c:m7 f:7 bes:m7 ees:7 a:m7 d:7 ees:7 aes:7} 

g:m7 g:m7 g:m7 g:m7

bes:maj \times 2/4 {a:m5.7- d:7} g:m7 d:7

} % end harmonies

\score {
  <<
    \time 4/4
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
  \midi {\tempo 4 = 140}
}