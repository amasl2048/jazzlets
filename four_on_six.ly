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
  \set Staff.instrumentName = #"Guitar"

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A1
\mark \markup {\box 1}
bes'4 g f g
r2 f4 d
f4 r2 bes,4
c4 g \times 2/3 {d8 des c} bes4  
\break

% A2
%\mark \markup {\box Accents}
r8 d' g g r d f4
\times 2/3 {des4 f bes} \times 2/3 {aes4 ees f}
a2 fis4. cis8
ees4 r8 ges, aes aes r8 fis
\break

% B
%\mark \markup {\box Melody} 
g4. g'4. d4~
d8 g'4. d8 bes g4
ees4 d8 ees a,4 d
c8 d g,4 c bes8 c 
\break

% A3
%\mark \markup {\box Break} 
f,4. c' c'4~
c8 bes fis e fis c4.
r8 bes f' d c bes c g
fis8 g bis a bis c4.
\break

% Improvisation 2nd part
\mark \markup {\box 2}

g,8 bes c d ees g c, d
f g bes c ees, g bes c   
d f g bes c bes g4
d'8 c a4 ees'8 d c4
\break

c8 bes g4 c r4
r1
r1
r1
\break

\empty
\empty

} % end solo

bass = \relative c' {
  \clef treble
  \key g \minor
  \time 4/4
  \set Staff.instrumentName = #"Bass"

g4 a bes c   cis d e f   fis g a ais   a g d cis
c g f a   ais f' ees bes  a e' c d  ees ais, gis fis

}  % end bass

harmonies = \chordmode {

g1:m7 g:m7 g:m7 g:m7
c2:m7 f:7 bes:m7 ees:7 a:m7 d:7 ees:7 aes:7 
g1:m7 g:m7 g:m7 g:m7
bes1:maj a2:m7.5- d:7 g1:m7 d:7

g1:m7 g:m7 g:m7 g:m7
c2:m7 f:7 bes:m7 ees:7 a:m7 d:7 ees:7 aes:7 
g1:m7 g:m7 g:m7 g:m7
bes1:maj a2:m7.5- d:7 g1:m7 d:7

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
    \new Staff {
      \set Staff.midiInstrument = #"fretless bass"
      \bass
    }
  >>
  \layout {}
  \midi {\tempo 4 = 140}
}