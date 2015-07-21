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
bes'4 g f g
r2 f4 d
f4 r2 bes,4
c4 f, \times 2/3 {d8 des c} bes4  
\break

% A2
%\mark \markup {\box Accents}
r8 d' g g r d f4
\times 2/3 {des4 f bes} \times 2/3 {aes4 ees f}
a2 fis4. cis8
ees4 r8 g, aes aes r8 f
\break

% B
%\mark \markup {\box Melody} 
\empty

% A3
%\mark \markup {\box Break} 
\empty

} % end solo


harmonies = \chordmode {

g1:m7 g:m7 g:m7 g:m7

c2:m7 f:7 bes:m7 ees:7 a:m7 d:7 ees:7 aes:7 

g1:m7 g:m7 g:m7 g:m7

bes1:maj a2:m5.7- d:7 g1:m7 d:7

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