\version "2.16.2"
\header {
    title = "The Birds and The Bees"
    subtitle = "(Improvisation by Andrey & Nikita)"
    composer = "Atilla Zoller" 
    tagline = ""  % removed 
}

empty = {
  r1 r1 r1 r1 \break
}

solo = \relative c'' {
  \clef treble
  \key b \minor
  
  \set fingeringOrientations = #'(down)
  \set stringNumberOrientations = #'(up)
  \override Fingering #'staff-padding = #'()

% A1
\mark \markup {\box A1}
  d8 (e4) cis8 (d4) gis,8 a
  e'8 d cis4 gis'8 \glissando a d cis
  a4 gis fis8 gis cis,4
  a8 \glissando b d cis a4 r4

  e''8 (d) e (d) b a b d
  e8 (d) b4 a8 r8 b4~
  b8 b4 b8~ b2
  b8 e, cis fis b, f e a
  \break
  
  d8 b fis d e e4 e8~
  e8 d4. r2
  \break
% A2
\mark \markup {\box A2}
  \times 2/3 {r4 d'' d} cis a
  b4 fis r4 e8 d
  cis4 d8 cis (cis) a4 b8~
  b r4 r8 \times 2/3 {a d fis} \times 2/3 {e gis b}
  \break
  
  r8 cis8 \acciaccatura d8 \glissando e8 d cis a fis4
  \acciaccatura a8 \glissando b4 a \times 2/3 {d,8 g e'} \times 2/3 {cis8 a fis}
  \times 2/3 {a8 fis cis} d8 a'4 e8 gis4
  a,8 d4 b8 fis d e4
  \break
  r1
  r4 r8 fis,8 fis b fis f
  \break

% B
\mark \markup {\box B}  
  e4 <b'' b'>4~ <b b'>8 <d d'>4 <e e'>8~
  <e e'>4 <d d'> <e e'> <d d'>
  r4 <fis, fis'>4~ <fis fis'>8 <a a'>4 <b b'>8~
  <b b'>4 <a a'> <b b'> <a a'>    
  
  r4 <b b'>4 <b b'>8 <d d'>4 <e e'>8~
  <e e'>4 <d d'> <e e'> <d d'>
  g'4. g8~ g4 fis4
  fis,,8 fis e e d d cis <cis fis'>
  \break

%A3
\mark \markup {\box A3 theme}
  b''4. a8 (b4.) a8
  b8 (a) r8 fis r8 b, d fis
  e4 e8 d e4 e8 d
  e8 d r8 b r4 b
  
  d4 fis4~ fis2
  e4 e8 d b a4 b8~
  b4 r4 b8 d e fis~
  fis e4 cis8 d4 r4
  \break

  b8 d e fis~ fis e4 cis8
  d8 b a b r2
  \break
} % end solo

part = \chordmode {
  b2:m7 cis:m7
  d:maj gis:m11
  cis:m7 fis:7
  b:m7 f:7.11+
  e1:m9
  g2:maj fis:7
  b:m7 e:7
  b:m7 e:7
  b:m7 e:7
  b:m7 e:7
}

harmonies = \chordmode {

%A1
 \part
%A2
 \part
%B
 e1:sus4 e1:sus4
 b:m7 b:m7
 e1:sus4 e1:sus4
 g:7 fis:7
%A3
 \part

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
  \midi {\tempo 4 = 90}
}