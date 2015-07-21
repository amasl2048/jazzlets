\version "2.16.2"
\header {
    title = "Autumn Leaves"
    subtitle = "(Improvisation by Andrey & Nikita)"
    composer = "Joseph Kosma" 
    tagline = ""  % removed 
}

empty = {
  r1 
  r1 
  r1 
  r1 \break
}

solo= \relative c''' {
  \clef treble
  \key e \minor
  \time 4/4

  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()
   r1 
% A1 
  \mark \markup {\box A1}
  <a a,>4 r8 <b b,> <a a,>4 <b b,>8 <a~ a,~> 
  <a a,>2 <e e,>4 <fis fis,>4 
  d4 r8 e fis4 a 
  a4. g8~ g4 r 
  \break
   
  a4 g4-4 \times 2/3 {r4 <ais,-1\4> b-2 } 
  fis'8-1\2 e-4\3 cis-1 d-2 dis-2 c-4\4 b-3 a-1 
  <g-4\5>8 b-3\4 d-1\3 fis~-1\2 fis e\3 dis e 
  d4 r8 b d4 cis8 c~
  \break

  c8 e a b g d cis c
  fis8 a fis d c4 b
  <fis fis,>4 <g g,> <b b,> <c c,>
  <e e,>4 <d' d,>8 <c c,>~ <c c,>4. b8~ 
  \break

  b8 ais a fis e b c d 
  dis8 c a ais b g dis b 
  fis'8 e \times 2/3 {g8 b dis} fis e g a
  \times 2/3 {fis8 e b} g4 b8 e f4 
  \break

% Bridge
  \mark \markup {\box B}
  a4 fis8 c' b4 r8 <c\2>8 
  d8 e \times 2/3 {e8 (d) b} \times 2/3 {b8 (a) g} e8 f
  fis8 d b c d g fis b
  \times 2/3 {fis'8 f e} b d~ d4  \times 2/3 {fis8 f e}
  \break

% A2
   \mark \markup {\box A2}
  b8 d~ d2 \times 2/3 {<a,\4>8 c cis}
  d8 e eis fis a4 b8 a~
  a8 g \times 2/3 {e8 b g} d' c bes b
  r8 fis f e~ e4 \times 2/3 {d''8 ais b}
  \break
  
  c4 c a \times 2/3 {g8 e f}
  fis8 e dis b e c ais b~
  <d, g b>8 d' fis a <g, des' fis b>4 c'8 <c,~ fis~ a~>8
  <c fis a>4 c'8 <fis,,~ b~ dis~ gis~> <fis b dis gis>4 ais'8 <b, e g>
  \break
  
  r4 \times 2/3 {e8 b g} a8 g f fis~
  fis8 a c e dis e fis a 
  g8 fis e c d b e4
  r1
\break

}

harmonies = \chordmode {
  r1
%A1
  a:m7 d:7 g:maj c:maj
  fis:m7.5- b:7 e:m7 e:7

  a:m7 d:7 g:maj c:maj
  fis:m7.5- b:7 e:m7 e:m7

% Bridge
  fis:m7.5- b:7 e:m7 e:7

% A2
  a:m7 d:7 g:maj g:maj
  fis:m7.5- b:7.9- \times 2/4 {e:m7 dis:aug7} \times 2/4 {d:m7 cis:7}
  c:maj \times 2/4 {fis:m7.5- b:7} e:m7
}

bass = \relative c' {
  \clef treble
  \key e \minor
  \time 4/4
r1
%A1
  a4 b c e d c b fis g b d cis c d e g,
  fis'4 d e c b a g fis e2 e e e

  a4 b c e d c b fis g b d cis c d e g,
  fis'4 d e c b a g fis e2 e e e
%B
  fis'4 e d c b dis fis f e fis g dis d c gis b
%A2
  a4 e' c cis d c b gis g b d cis c g e f
  fis4 a c ais b a g fis e b' ais cis d a gis cis 
  c2 c fis b, e e e e 
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff {
      \set Staff.midiInstrument = #"electric guitar (jazz)"
      \solo
    }
%    \new Staff {
%      \set Staff.midiInstrument = #"fretless bass"
%      \bass
%    }
  >>
  \layout {}
  \midi {\tempo 4 = 120}
}