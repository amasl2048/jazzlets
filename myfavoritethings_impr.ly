\version "2.16.2"
\header {
    title = "My Favorite Things"
    subtitle = "(Improvisation by Andrey & Nikita)"
    composer = "Richard Rodgers" 
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
  e,,4 <fis' g d' e> g' 
  <fis,, fis''> <e' a> e'
  e,, <e' a d g> a'
  <fis,, fis''> <e' a> e'
  \break

  <c, b''>4 <g' b>2
  c'8 b a e c b 
  <c, d'>4 <e b'>2
  c4 <g'\harmonic b\harmonic e\harmonic>^\markup{"XII"} g''
  \break

  <a,,, d''>4. <a' e' g>
  <d, b''>4 <c' fis>8 a' dis, e
  g,,4 <b' e a> <b d g>
  d <c, e b'> c'
  \break

  <g, d''> <fis' b> b
  <c, e'> <g' b> d'
  fis <a, c> e'
  <a, dis g> a' d
  \break

% A2
\mark \markup {\box A2}  
  b4. a8 g fis 
  <fis,, e' a cis>4. a''8 g fis
  <e,, fis' b d>4. <fis' g b e>
  <a, a' d fis>4 <b' d g> d'
  \break

  <g,, c e b'>8 c' b e, fis g
  <c,, fis b d>4 b'8 c b4
  c, <g' b>8 c b4
  <c, fis b d>4 b'8 c b4
  \break

  <a, g' b c e>4 c'8 e g b 
  c d b \glissando a fis ees \glissando
  d b a g d b
  <c e'>8 <g' b> g'4 a
  \break

  <g, b'>8 <d' fis> a'4 d
  <c,, b''>4. <a' d g>4.~
  <a d g>4 \times 2/3 {fis8 (g a)} \times 2/3 {b (c d)}
  dis fis e b' a d
  \break

%A'
\mark \markup {\box A'}
  <e,,, b'''>4 <gis' cis fis> e,
  <gis' cis fis>4 e' e
  \empty
%  \empty
%  \empty
%  \break

%B
%\mark \markup {\box B}

%  \empty
%  \empty
%  \empty  
%  \empty
  
%  \empty
%  \empty

} % end solo

part = \chordmode {
  e2.:m7 fis:m7 e:m7 fis:m7
  c:maj c:maj c:maj c:maj
  a:m7 d:7 g:maj c:maj
  g:maj c:maj fis:m7.5- 
}

harmonies = \chordmode {

%A1
 \part b:7
%A2
 \part b:7.9-
%A'
  e:maj fis:m7 e:maj fis:m7
%  a:maj a:maj a:maj a:maj
%  a:m7 d:7 g:maj c:maj
%  g:maj c:maj fis:m7.5- b:7.9-
% B
%  e:m7 e:m7 fis:m7.5- b:7
%  e:m7 e:m7 c:maj c:maj
%  c:maj c:maj a:7 a:7
%  g:maj c:maj c:maj d:7
%  g:6 c:maj g:6 c:maj
%  g:maj c:maj fis:m7.5- b:7

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
  \midi {\tempo 4 = 120}
}